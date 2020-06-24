library(dslabs)
library(tidyverse)
data(heights)

m_heights <- filter(heights,sex == "Male")
head(m_heights)

p <- m_heights %>% ggplot(aes(sample=height))

params <- m_heights %>% summarise(mean=mean(height),sd=sd(height))

p + geom_qq(dparams = params) +
  geom_abline()

ggsave("figs/qq_plot.png")