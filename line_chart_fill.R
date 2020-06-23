library(dslabs)
data(heights)
head(heights)

m_heights <- filter(heights,sex == "Male")
head(m_heights)

p <- m_heights %>% ggplot(aes(x=height))

p + geom_density(fill="pink")

p2 <- heights %>% 
  ggplot(aes(x=height,fill=sex)) +
  geom_density(alpha=0.2,bw=1)

p2