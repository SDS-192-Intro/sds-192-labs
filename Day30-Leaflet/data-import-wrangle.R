library(tidyverse)

# Note that Public Advocate's Office excludes rental properties with fewer than 3 units
housing_violations <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=date_extract_y(approveddate)=2021%20AND%20class!=%27A%27%20AND%20class!=%27I%27&$limit=1000000")

hpd_buildings <- read_csv("https://data.cityofnewyork.us/resource/kj4p-ruqc.csv?$select=buildingid,legalclassa&$where=legalclassa>2&$limit=400000")

registrations <- read_csv("https://data.cityofnewyork.us/resource/tesw-yqqr.csv?$limit=200000")

registration_contacts <-
  read_csv("https://data.cityofnewyork.us/resource/feu5-w2e2.csv?$select=registrationid,type,corporationname,firstname,middleinitial,lastname&$where=type=%27HeadOfficer%27%20OR%20type=%27IndividualOwner%27&$limit=200000")

housing_violations_total <-
  housing_violations %>% 
  left_join(hpd_buildings, by = c("buildingid" = "buildingid")) %>%
mutate(count_weighted = case_when(
  violationclass == "B" ~ count * 1,
  violationclass == "C" ~ count * 1.5
)) %>%
  group_by(buildingid, latitude, longitude, legalclassa) %>%
  summarize(total_violations_weighted = sum(count_weighted)) %>% 
  ungroup()  %>%
  inner_join(registrations, by = c("buildingid" = "buildingid")) %>%
  inner_join(registration_contacts, by = c("registrationid" = "registrationid"))

rm(registration_contacts)
rm(registrations)

worst_buildings <-
  housing_violations_total %>%
  arrange(desc(total_violations_weighted)) %>%
  head(100) %>%
  mutate(fullname = paste(firstname, lastname))

write.csv(worst_buildings, "Day28-Leaflet/datasets/worst_buildings.csv")


