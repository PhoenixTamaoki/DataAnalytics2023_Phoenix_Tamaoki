#EPI_data <- read.csv('./EPI/EPI_Data.csv') hmm not sure why this isnt working so just used choose
EPI_data <- read.csv(file.choose(), header = T)

View(EPI_data)
# fix(EPI_data) shouldnt work but seems to?

# filter out the NA entries
filtered <- is.na(EPI_data$EPI)
filtered

EPI_data <- EPI_data[!filtered]
EPI_data
summary(EPI_data)
mean(EPI_data$EPI)
fivenum(EPI_data$EPI)
stem(EPI_data$EPI)
hist(EPI_data$EPI)
hist(EPI_data$EPI, seq(30., 95., 1.0), prob = TRUE)
lines(density(EPI_data$EPI, na.rm = TRUE, bw = 1.))

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)

tf_AIR_H <- is.na(EPI_data$AIR_H)
tf_AIR_H

AIR_H <- AIR_H[!tf_AIR_H]
AIR_H
summary(AIR_H)
fivenum(AIR_H, na.rm = TRUE)
stem(AIR_H)
hist(AIR_H)
hist(AIR_H, prob = TRUE)
lines(density(AIR_H, na.rm = TRUE, bw = 1.))

