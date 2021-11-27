a <- read.table("/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/all_dfm.csv",sep=",")
b <- t(a)
write.csv(b, "/Users/shg/Documents/NewSchool/InfoViz/P3/Chyron/bleedingedge/all_dfm_transposed.csv", row.names = FALSE)