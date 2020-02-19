#########################################################################
##                                                                     ##
##                                                                     ##
##               Application 1: Classification Tree                    ##
##                                                                     ##
##                                                                     ##
#########################################################################

rm(list=ls())
setwd("G:\\Il mio Drive\\Teaching\\Ministry of Education Class\\machine-learning-for-education-policies\\R_applications\\CART")

#install.packages("haven")
#install.packages("rpart")
#install.packages("ctree")

library(haven)
library(rpart)
library(ctree)

data<- read_dta("PISA_LOW_FLS.dta")

whichvars = c("DUMMY_LOW", # Response variable
              "AGE", "BELANGNdum", # Background
              "HEDRES","WEALTH","ST013Q01TA","IMMIG", "MISCED","FISCED","BMMJ1","BFMJ2","EMOSUPS", # SES
              "REPEAT","OUTHOURS","MMINS","LMINS","PV1MATH","PV1READ","ANXTEST","MOTIVAT") # Ability

student_level_data <- data[whichvars]

summary(student_level_data)


