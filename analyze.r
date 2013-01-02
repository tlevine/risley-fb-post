#!/usr/bin/env Rscript
library(ggplot2)

chainsaw <- read.csv('time.csv')
chainsaw$datetime.gmt <- strptime(chainsaw$datetime, format = '%d/%b/%Y:%H:%M:%S %z')
chainsaw$datetime.est <- strptime(chainsaw$datetime, format = '%d/%b/%Y:%H:%M:%S -0500')

p.1 <- qplot(chainsaw$datetime.est)
p.2 <- qplot(chainsaw$request)
p.3 <- ggplot(subset(chainsaw, request %in% names(sort(table(chainsaw$request), decreasing = T)[1:20]))) +
  aes(x = datetime.est, y = request) + geom_bin2d()
