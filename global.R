library(DT)
library(data.table)
library(shiny)
library(shinydashboard)
library(shinythemes)
library(lubridate)
library(shinydashboardPlus)

racedata <- data.frame(fread("racedata.csv", header = TRUE, stringsAsFactors=FALSE))
