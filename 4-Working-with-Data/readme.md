# Module 4: Working with data in R
## Learning Objectives
* Reading CSV and Excel Files
* Reading txt files
* Writing and saving data objects to file in R

## Video 4.1: Reading CSV, excel and built-in datasets
### Reading CSV files
```R
#loading a file
read.csv("./path/file.csv")
```
* R doesn't have a built-in excel read function
```R
# install package
install.packages("readxl")

# call into environment
library(readxl)

# load file
read_excel("./path/file.xlsx")
```
* Next, store data into a variable

```R
# r will structure as data.frame
my_data <- read.csv("./path/file.csv")
```
* We can start accessing elements

```R
# call elements (by column name)
my_data['name']

# call elements (by row)
my_data[1,]
# row number, and blank indicates all items in that row

# call different rows
my_data[1, c("column-name","column-name")]
```
### Built-in datasets
* see built-in datasets using data()
```R
# default list of built-in datasets
data()

# see info on particular dataset
help(dataFrameName)
# sub any set into "dataFrameName"
```

## Video 4.2: Reading .txt files in R
### Reading files into R
* readLines() function
```R
# creates a character vector, with each line as an item (separator: line breaks)
text1 <- readLines("./path/file.txt")

# Length() counts the number of separate lines in the vector
length(text1)

> [1] 3

# nchar() counts the number of characters in each item
nchar(text1)

> [1] 149 163 271

# find file size in bytes
file.size("./path/file.txt")
```
* Read text files by word-items into R using scan()
```R
#load txt file
text2 <- scan(".path/file.txt". " ")
```

## Video 4.3: Writing and Saving to files in R
### Exporting a text file

```R

m <- matrix(c(1,2,3,4,5,6), nrow =2, ncol = 3)

write(m, file = "file.txt", ncolumns = 3, sep = "")
```
### Exporting as a CSV file
```r 
# define dataframe
df = matrix(c(1,2,3,4,5))

# write to filepath
write.csv(df, file = "file_path/dataset.csv", row.names = False)

# OR if you want a table
write.table(df, file = "./path/filename.csv", row.names = FALSE, col.names = FALSE, sep=",")
```
### Exporting as an Excel File

```r
install.packages("xlsx")
library(xlsx)

write.xslx(df, file = "./path/filename.txt", sheetName = "Sheet1", col.names = TRUE, row.names = FALSE)
```
### Saving R objects in .RData files
```r
save(list = c("var1","var2","var3"), file = "vars.RData", safe =  TRUE)
```