rm(list=ls())
####install relevant packages####
packages <- c("tidyverse",  
              "ggplot2", 
              "data.table",
              "readr",
              "dplyr",
              "openxlsx",
              "psych")

usePackage <-function(p){
  if (!is.element(p, installed.packages()[,1])){
    print(paste('Package:',p,'Not found, Installing Now...'))
    install.packages(p, dep = TRUE)}
  print(paste('Loading Package :',p))
  require(p, character.only = TRUE)  
}

for(i in packages) {(usePackage(i))}
rm(packages)

#load excel file
a <- loadWorkbook("Data_Chocolate_allinterviews.xlsx")
sheetnames <- sheets(a)
for(i in 1:length(sheetnames)){
  assign(sheetnames[i], readWorkbook(a, sheet = i))
}

###describe data#### 





###test






