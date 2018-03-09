library("sqldf")
library(foreign)

setwd("P:/HuLab/Yi")

load("ACS/e2014bg.Rda")
load("ACS/e2015bg.Rda")


pop14<-e2014bg[,c("GEOID","B01003_001")]
pop14$year<-2014
pop15<-e2015bg[,c("GEOID","B01003_001")]
pop15$year<-2015

pop<-rbind(pop14,pop15)


hud<-read.dbf("USPS_HUD/USPS_VAC_022008_TRACTSUM_2KX.dbf")
