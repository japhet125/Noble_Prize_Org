library(tidyverse)
library(dplyr)
library(readr)
library(jsonlite)
library(httr)


url <- paste0("https://api.nobelprize.org/2.1/laureates")

url
response <- GET(url)
response

data <- fromJSON(content(response, "text"))

data