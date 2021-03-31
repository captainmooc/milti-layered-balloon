library(ggplot2)
data = read.csv("C:/Users/Minhy/Desktop/D_LOG.csv") 

index = seq(1,nrow(data),1)
data.pro = cbind(index,data)
colnames(data.pro) = c("index","temperature")

#--- raw record
ggplot(data.pro, aes(x=index,y=temperature)) + geom_line()
title("Raw record - temperature by flight time")

#--- flight record
data.pro.f = data.pro[2500:9000,]
ggplot(data.pro.f, aes(x=index,y=temperature)) + geom_line()

#--- find burst point
burst.tem = max(data.pro.f$temperature[data.pro.f$index>5000 & data.pro.f$index<6000])
