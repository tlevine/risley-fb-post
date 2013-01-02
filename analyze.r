#!/usr/bin/env Rscript

times <- read.csv('time.csv', header=F)[,1]
times.gmt <- strptime(times, format = '%d/%b/%Y:%H:%M:%S %z')
times.est <- strptime(times, format = '%d/%b/%Y:%H:%M:%S -0500')

library(ggplot2)
qplot(times.gmt)

