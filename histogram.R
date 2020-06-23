library(dslabs)
data(heights)

m_heights <- filter(heights,sex == "Male")
head(m_heights)

p <- m_heights %>% ggplot(aes(x=height))
p + geom_histogram(binwidth=1,fill="grey",col="black") +
  xlab("Male heights in inches") +
  ggtitle("Histogram")