# Module 1: R Basics
## Learning Objectives
* Math, Variables, and Strings
* Vectors and Factors
* Vector operations
## Video: Math Variables and Strings
### Basic Math with R
```R
# assigning variables
x <- 13 + 10
[1] 23

# deleting variable
rm(x)
```
* [Link to Lab]
## Video: Vectors and Factors
### Introduction to Vectors
* 1d array of objects
* Simple tool to store data
* In R, there is no restriction on type or number of elements that a vector can contain

```R
# create vector
c(81, 125)

# assign vector to variable
ratings <-c(81, 125)

# create list with equal increments
c(1:10)

# in decreasing order:
c(10:1)

# hold str
c("one", "two", "three")
```
### Types of Vectors
* Numeric vector
* Character vector
* Logical vector (i.e. T/F)

```R
# check movie ratings
movie_ratings <- c(1:10)
movie_ratings > 4

[1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
```
### Factors
* Finds unique categories or LCD
```R
genre_vector <- c("one","one","three","four","four","one")

factor(genre_vector)

[1] one   one   three four  four  one
Levels: four one three
```
### Summarizing the factors
* provides basic information on structure and content
```R
summary(genre_vector)
Length     Class      Mode
    6 character character

g_v_factor = factor(genre_vector)

 four   one three
    2     3     1
```
### Ordered Factor
* Nominal: no clear order such as movie genre
* ordinal: such as movie length

```R
## Create a multi dimensional vector
# create year vector
year <-c(1985, 1999, 2010, 2002)

# add names to year vector
names(year) <- c("The Breakfast Club", "American Beauty", "Black Swan", "Chicago")

# Display year of Black Swan
year["Black Swan"]
```

```R
## Create a sorted vector
movie_length <- c("Very short","Short","Medium","Short","Very Long","Very short","Very short")

# to specify levels:
mvlength_factor <- factor(movie_length,
    ordered = TRUE,
    levels = c("Very short","Short","Medium","Very Long"))

# sort levels - sort()
year_sorted <- sort(year)
```
* common operations
```R
# min()
min(year)

# max()
max(year)

# sum()

# mean()

# summary()
```