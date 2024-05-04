library(tidyverse)
library(lubridate)

# Read in the data.  Do some cleaning/verification
Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  mutate(DATE = lubridate::ymd(DATE)) %>%
  rename(Date=DATE, Prcp=PRCP, Snow=SNOW, TMax=TMAX, TMin=TMIN)%>%
  select(Date, Prcp, Snow, TMax, TMin)

# Save the data frame to the data/ directory as Flagstaff_Weather.rda

usethis::use_data(Flagstaff_Weather, overwrite = TRUE)
