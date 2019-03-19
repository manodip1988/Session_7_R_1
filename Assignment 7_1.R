#1. Histogram for all variables in a dataset mtcars. Write a program to create histograms for all columns.

library(purrr)
library(tidyr)
library(ggplot2)

mtcars %>%
  keep(is.numeric) %>%
  gather() %>%
  ggplot(aes(value)) +
  facet_wrap(~ key,scales = "free") +
  geom_histogram()


#2. Check the probability distribution of all variables in mtcars

library(ggplot2)

mtcars %>%
  keep(is.numeric) %>%
  gather() %>%
  ggplot(aes(value)) +
  facet_wrap(~ key,scales = "free") +
  stat_density()


#3. Write a program to create boxplot for all variables.

library(ggplot2)
library(reshape)
m1 <- melt(mtcars)
ggplot(m1,aes(x = variable,y = value)) + facet_wrap(~variable) + geom_boxplot()
