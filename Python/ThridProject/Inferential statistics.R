library(readr)
data <- read.csv("C:/Users/User/Desktop/open/train2.csv")

bartlett.test(credit~begin_month, data = data)

kruskal.test(credit~begin_month, data = data)

glm(credit~begin_month, data = data)

chisq.test(credit~begin_month, data = data)
