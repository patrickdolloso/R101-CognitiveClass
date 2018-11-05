# Module 5: Strings and Dates in R
## Learning Objectives
* String operations in R
* Regular Expressions
* Dates in R
## Video 5.1: String Operations in R
### Basic String Operations
```R
# load into variable
summary <- readLines("./path/filename.txt")

# count number of characters in a string - [1] is the line number
nchar(summary[1])

# convert all to uppecase/lowercase
toupper(summary[1]
tolower(summary[1])

# replace characters
chartr(" ", "-", summary[1])

## break apart a string into a word-list vector separated by a space character

char_list <- strsplit(summary[1], " ")
word_list <- unlist(char_list)
word_list
```
* Basic manipulation
```r
# sort alphabetically
sorted_list <- sort(word_list)

# paste a variable into another variable
paste(sorted_list, collapse = " ")
# collapse is the separator

# output a substring from a variable
sub_string <- substr(summary[1], start = 4, stop = 50)

# remove beginning and ending space
trimws(substring)
```
* count from back
```r
# start from absolute end (-1) and print out 8 characters (-8)
library(stringr)
str_sub(summary[1], -8, -1)
```

## Video 5.2: The Date Format in R
### The Data Class
