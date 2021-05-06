## ---------------------------
##
## Script name: template.R
##
## Purpose of script:  
##
## Author: C.Yang
##
## Date Created: 2021-03-02
## Date Modified: 2021-04-27
## Version: 
##
## ---------------------------
##
## Notes: This scripts calculates correlation matrix and save as outputs
##        Updates working directory
##
## Bugs:
##
## TODO:
##
## ---------------------------
## ---------------------------
## set working directory for Mac and PC
#setwd("/projects/commonModel")      # working directory (server)
#setwd("./")    # working directory (Cher's mac)

## Load library
options(scipen = 6, digits = 4) 
#.libPaths(c(.libPaths(), "/home/stocco/R/x86_64-pc-linux-gnu-library/3.6"))

library(tidyverse)
library(dplyr)
library(ggthemes)
library(ppcor)    # porr
library(reshape2) # melt
## ---------------------------

rm(list=ls())
