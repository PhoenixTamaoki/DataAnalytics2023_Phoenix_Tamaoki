#### Use text with string kernels
library(keras)
data <-dataset_reuters
data(data)
is(data)
tsv <- ksvm(data,rlabels,kernel="stringdot",
            kpar=list(length=5),cross=3,C=10)
tsv

