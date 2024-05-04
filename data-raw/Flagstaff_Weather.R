library(tidyverse)

# Read in the data.  Do some cleaning/verification
Flastaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  gather("DATE", "PRCP", "SNOW", "TMAX", "TMIN") %>%
  drop_na() %>%
  mutate(DOM  = str_remove(DOM, fixed('X'))) %>%
  mutate(Date = lubridate::ymd( paste( Year, Month, DOM )) ) %>%
  select(Date, Flagstaff_Weather)

# Save the data frame to the data/ directory as Flagstaff_Weather.rda

usethis:use_data(Flagstaff_Weather)
