library(readr)
dirty_data <- read_csv("~/Downloads/dirty_data.csv")
View(dirty_data)

# 2. Remove special characters, padding (the white space before and after the text) from Street 1 and Street 2 variables. 
clean_data <- dirty_data
clean_data$Street <- gsub("[^A-Za-z ]", " ", clean_data$Street)
clean_data$Street <- gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", clean_data$Street, perl=TRUE)


clean_data$Street.2 <- gsub("[^A-Za-z ]", " ", clean_data$Street.2)
clean_data$Street.2 <- gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", clean_data$Street.2, perl=TRUE)
