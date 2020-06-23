library(dplyr)
library(tidyverse)
library(dslabs)
data("gapminder")

countries <- c("South Korea","Germany")

labels <- data.frame(country=countries, x=c(1980,1965),y=c(4,3))

gapminder %>% filter(country %in% countries) %>%
  ggplot(aes(year,fertility,col=country)) +
  geom_line() +
  geom_text(data=labels, aes(x,y,label=country),size=4) +
  theme(legend.position="none")