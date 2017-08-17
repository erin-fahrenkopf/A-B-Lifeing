#This code creates density plots of variables with different distributions
#The variables come from normal, unifiorm and power distribution
#The code's output will be density graphs side by side with titles
set.seed(15656)
library(ggplot2)



y.power <-rexp(1000, rate = 1)
hist(y.power)
y.power <- data.frame(y.power)
power.plot <-ggplot(y.power, aes(x=y.power)) + geom_density()
print(power.plot + ggtitle("Amplification feedback"))


y.normal <- rnorm(1000, mean = 50, sd = 10)
hist(y.normal)
y.normal <- data.frame(y.normal)
normal.plot <-ggplot(y.normal, aes(x=y.normal)) + geom_density()
print(normal.plot + ggtitle("Counteraction feedback"))

y.uniform <- runif(1000, min = 0, max = 100)
hist(y.uniform)
y.uniform <- data.frame(y.uniform)
uniform.plot <-ggplot(y.uniform, aes(x=y.uniform)) + geom_density()
print(uniform.plot + ggtitle("No feedback"))

