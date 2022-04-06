library(tidyverse)
housing_violations_dec <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20dec_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272020-12-31T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272020-12-01T00:00:00.000%27))&$limit=1000000")

housing_violations_jan <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20jan_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-01-31T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-01-01T00:00:00.000%27))&$limit=1000000")

housing_violations_feb <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20feb_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-02-28T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-02-01T00:00:00.000%27))&$limit=1000000")

housing_violations_mar <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20mar_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-03-31T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-03-01T00:00:00.000%27))&$limit=1000000")

housing_violations_apr <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20apr_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-04-30T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-04-01T00:00:00.000%27))&$limit=1000000")

housing_violations_may <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20may_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-05-31T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-05-01T00:00:00.000%27))&$limit=1000000")

housing_violations_jun <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20jun_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-06-30T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-06-01T00:00:00.000%27))&$limit=1000000")

housing_violations_jul <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20jul_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-07-31T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-07-01T00:00:00.000%27))&$limit=1000000")

housing_violations_aug <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20aug_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-08-31T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-08-01T00:00:00.000%27))&$limit=1000000")

housing_violations_sep <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20sep_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-09-30T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-09-01T00:00:00.000%27))&$limit=1000000")

housing_violations_oct <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20oct_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-10-31T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-10-01T00:00:00.000%27))&$limit=1000000")

housing_violations_nov <-
  read_csv("https://data.cityofnewyork.us/resource/wvxf-dwi5.csv?$select=buildingid,registrationid,class%20as%20violationclass,latitude,longitude,count(*)%20as%20nov_count&$group=buildingid,registrationid,violationclass,latitude,longitude&$where=class!=%27A%27%20AND%20class!=%27I%27%20AND%20novissueddate<%272021-11-30T00:00:00.000%27%20AND%20(violationstatus=%27Open%27%20OR%20(violationstatus=%27Close%27%20AND%20currentstatusdate>%272021-11-01T00:00:00.000%27))&$limit=1000000")


hpd_buildings <- read_csv("https://data.cityofnewyork.us/resource/kj4p-ruqc.csv?$select=buildingid,legalclassa&$where=legalclassa>2&$limit=400000")

registrations <- read_csv("https://data.cityofnewyork.us/resource/tesw-yqqr.csv?$limit=200000")

registration_contacts <-
  read_csv("https://data.cityofnewyork.us/resource/feu5-w2e2.csv?$select=registrationid,type,corporationname,firstname,middleinitial,lastname&$where=type=%27HeadOfficer%27%20OR%20type=%27IndividualOwner%27&$limit=200000")



housing_violations <-
  housing_violations_dec %>%
  full_join(housing_violations_jan) %>%
  full_join(housing_violations_feb) %>%
  full_join(housing_violations_mar) %>%
  full_join(housing_violations_apr) %>%
  full_join(housing_violations_may) %>%
  full_join(housing_violations_jun) %>%
  full_join(housing_violations_jul) %>%
  full_join(housing_violations_aug) %>%
  full_join(housing_violations_sep) %>%
  full_join(housing_violations_oct) %>%
  full_join(housing_violations_nov) %>%
  mutate(yearcount = dec_count +
           jan_count +
           feb_count +
           mar_count +
           apr_count +
           may_count +
           jun_count +
           jul_count +
           aug_count +
           sep_count +
           oct_count +
           nov_count
           ) %>%
  mutate(count_weighted = case_when(
    violationclass == "B" ~ yearcount * 1,
    violationclass == "C" ~ yearcount * 1.5
  )) %>%
  group_by(buildingid, latitude, longitude) %>%
  summarize(avg_violations_weighted = sum(count_weighted, na.rm = TRUE)/12) %>% 
  ungroup() %>% 
  left_join(hpd_buildings, by = c("buildingid" = "buildingid")) %>%
  mutate(violations_score = avg_violations_weighted/legalclassa) %>%
  inner_join(registrations, by = c("buildingid" = "buildingid")) %>%
  inner_join(registration_contacts, by = c("registrationid" = "registrationid"))

worst_landlords <-
  housing_violations %>%
  group_by(firstname, lastname) %>%
  summarize(
    buildings = n(),
    total = sum(avg_violations_weighted, na.rm = TRUE),
    score = sum(avg_violations_weighted, na.rm = TRUE)/sum(legalclassa)) %>%
  ungroup() %>%
  arrange(desc(score))

worst_buildings <-
  housing_violations %>%
  arrange(desc(avg_violations_weighted)) %>%
  head(100) %>%
  mutate(fullname = paste(round(avg_violations_weighted, 2), "avg. open violations;", legalclassa, "units; landlord:", firstname, lastname))

write.csv(worst_buildings, "Day30-Leaflet/datasets/worst_buildings.csv")


