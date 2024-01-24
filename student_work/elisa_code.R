# Elisa / Start: 1/24/24 / Last update: 1/24/24
# Relationship between mineral deposits, processing level, and conflict
# Clear previous session
rm(list = ls())

#Set working directory
setwd("C:/Users/yoshiara/OneDrive - RAND Corporation/Desktop/max's class/")

#Max suggested uploads
getwd()
list.files()

#Read in USGS mineral deposit data (world)
deposit <-read.csv("deposit.csv")

#Read in mining project data (Africa only)
mining <-read.csv("africapowerminingprojectsdatabase.csv")

#Read in conflict data (Africa only)
acled <- read.csv("1997-01-01-2024-01-01-Eastern_Africa-Middle_Africa-Northern_Africa-Southern_Africa-Western_Africa.csv")

#What variables do I have?
ls(acled)
ls(deposit)
ls(mining)

#Make some dataframes
df_acled <- data.frame(
  acled$event_id_cnty, 
  acled$year, 
  acled$event_type, 
  acled$country,
  acled$event_type,
  acled$latitude,
  acled$longitude)


df_deposit <- data.frame(
  deposit$gid,
  deposit$dep_name,
  deposit$country,
  deposit$commodity,
  deposit$latitude,
  deposit$longitude)

df_mining <- data.frame(
  mining$Property.Name,
  mining$Country,
  mining$Commodity,
  mining$Status,
  mining$Extent.of.Processing,
  mining$Project.Inception..Year.,
  mining$Mine.Location)