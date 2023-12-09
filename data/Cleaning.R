library(ggplot2)
library(dplyr)
library(haven)

# Link to the dataset: https://www.census.gov/programs-surveys/nsch/data/datasets.html
# screener_data <- read_sas('nsch_2021_screener.sas7bdat')
topical_data <- read_sas('~/Desktop/STAT 456/final project/nsch_2021_topical.sas7bdat')

topical_data %>%
  mutate(
    ACE3 = ifelse(ACE3 == 2, 0, 1),
    ACE4 = ifelse(ACE4 == 2, 0, 1),
    ACE5 = ifelse(ACE5 == 2, 0, 1),
    ACE6 = ifelse(ACE6 == 2, 0, 1),
    ACE7 = ifelse(ACE7 == 2, 0, 1),
    ACE8 = ifelse(ACE8 == 2, 0, 1),
    ACE9 = ifelse(ACE9 == 2, 0, 1),
    ACE10 = ifelse(ACE10 == 2, 0, 1),
    ACE11 = ifelse(ACE11 == 2, 0, 1),
    ACE12 = ifelse(ACE12 == 2, 0, 1)
  ) %>%
  mutate(
    ACE_score = ACE3 + ACE4 + ACE5 + ACE6 + ACE7 + ACE8 + ACE9 + ACE10 + ACE11 + ACE12
  ) 


