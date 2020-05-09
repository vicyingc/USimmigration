library(readr)
library(tidyr)
library(ggplot2)


border_data <- Border_Crossing_Entry_Data
str(border_data)

min(border_data$Date)
max(border_data$Date)

head(border_data)

border_data %>% 
  group_by(year(Date)) %>% 
  ggplot(aes(x = Date, y = Value)) + 
  geom_point() + 
  facet_wrap(~ Border)

