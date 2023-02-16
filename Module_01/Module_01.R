#------------------------------------#
# MB5370: Introduction to Programming
# Nick Murray
# February 2023

# Workspace:
# C:/Murray_Git/MB5370/Module_01
#------------------------------------#

#------------------------------------#
# Workshop 01. Introduction ####
#------------------------------------#

# 2.3.6 Getting started ####
# This section introduces us to R by using it as a simple calculator
2+1
1:30

# 2.3.7 Variables and Assignment ####
age <- 25
first_name <- 'Bill'
Age <- 41 # variables are case sensitive
age + 1
age + age


# Exercise 1 ####
# Try creating objects which take the sum of several numbers
object.A <- 15+25.1+20.25
object.A
object.B <- 1+2+3+4+5
object.B
object.C <- object_A + object_B # Now try adding those objects together
object.C

# Alternative
objectA <- sum(15,25.1,20.25) 
objectA
objectB <- sum(1,2,3,4,5)
objectB
objectC <- sum(objectA,objectB)
objectC


# 2.3.9 Built-in Functions of R ####
years_old <- 25.7
years_old
round(years_old) # rounds up
floor(years_old) # rounds down
?round #shortcut to help
args(round) # get arguments
years_old <- 25.765
years_old # note we overwrite the old object
round (years_old, 2)

# Exercise: explore the Paste function ####
paste ('Bob', 'is', age, 'years old.')
name <- 'Bob'
q1 <- paste (name, 'is', age, 'years old.')  

# 2.3.10 Debugging ####
# Misconceptions
# variables in programs do not work the same way as they do in spreadsheets

grade <- 55
total <- grade + 10
print (total)
grade <- 90
print (total) # value of total is a spreadsheet will be 100, but in programming a variable holds the value it was assigned (65)
total <- grade + 10
print (total) # executed in the way it was defined

# What will this code do? ####
p <- 2 # assigns variables
z <- 5      
out <- p * z # multiply pxz
out <- p* a # wont work because a is not a defined variable
print(out)

# Testing variable types ####
x <- 1
is.character(x) #FALSE it is not a character type
is.numeric(x)   #TRUE, x =1 and it is a number


# Exercise: fixing the errors
my_quiz <- list("uno",
                "dos",
                "tres",
                "quatro" #missing this comma
                "cinco")
str(my_quiz)
len(my_quiz)
print (my_quis)
print (my_quiz) #change quis to quiz

# 2.3.11 Data Types ####
# Exercise: create variables of the four main data types

my_numeric_variable <- 4.2 
class(my_numeric_variable)

my_character_variable <- "x"
class(my_character_variable) 

my_integer_variable <- -8
class(my_integer_variable) # numeric, which is true, but I want an integer

my_integer_v2 <- as.integer(my_integer_variable) #can use this to change the type
class(my_integer_v2) # now its  type is integer

my_logical_variable <- T
class(my_logical_variable)

my_logical_variable_v2 <- TRUE
class(my_logical_variable_v2)

# Data Structures ####
# Vectors are used in R
y<- c(1,2,3) # vector with 3 numeric elements
z<- c('Sarah','Tracy', 'Jon') # vector with 3 character elements
class(y) # numeric
class(z) # character

#Lists (unlike vectors) can contain elements of different types
A <- list(1, 'a', TRUE)
A
str(A) # use ?str to display the structure of an object
A[[2]] # Access individual elements using double square brackets

#2.3.13 Packages and Libraries
# install.packages(ggplot2) ->> do this only once, then comment out
library(ggplot2) #loads into workspace ->> do this EACH time you re-open the R workspace
x<- c(-1,-0.8, -0.6, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
y<- x^3
y
qplot(x,y) # this is a simple function from the ggplot2 library

# Coding best practice ####
# Class Discussion: What steps would you take to get a .csv to a plot of single species?
# 1. Read in the .csv data set into R
# 2. View the dataset in R to see how the data is structured
# 3. Wrangle (tidy up) the data as needed to get it into a for you can work with 
# 4. Using ggplot you plot the species on the x and the count on the y

#------------------------------------#
## Workshop 2 ####
#------------------------------------#

#3.1.1 for-loops textbook examples to see what they do
for (value in c("My", "first", "for", "loop")) {
  print("one run")
}

# let's slow it down a bit to see what is happening
for (value in c("My", "first", "for", "loop")) {
  print("one run")
  Sys.sleep(0.8) # this is just a pause in executions ?Sys.sleep
}

# note that this prints each item in the vector
for (value in c("My", "second", "for", "loop")) {
  print(value)
  Sys.sleep(0.8)
}

# The temporary variable doesn't need to be a certain name, 
# as long as you call it again inside your loop
for (word in c("My", "second", "for", "loop")) {
  print(word)
  Sys.sleep(0.8)
}

# Try changing it
for (string in c("My", "second", "for", "loop")) {
  print(string)
  Sys.sleep(0.8)
}

# But convention is generally i for iterate
for (i in c("My", "second", "for", "loop")) {
  print(i)
  Sys.sleep(0.8)
}






#Lets make our own loop  
my_list <- 1:50
print(my_list)
str(my_list)

# Make a more complex for loop
for(i in  my_list) {                                 #Head of for loop
  result <- i
  out<- paste0("I am printing loop number: ", i, ".") #output: 1 loop
  print (out) #using print function
  Sys.sleep(0.5) 
}
print ("For loop complete!")
print("Program Complete!")


#Increase complexity
add_me = 500
for(i in my_list) {                              # Head of for-loop
  result <- i + add_me # add to the i value
  out <- paste0("Result of iteration: ", i, " is ... ", result, ".") 
  print(out)
  # Sys.sleep(0.5) # comment out to show just how fast R is 
  # out_save[i] <- result    # add a new element to out_save to keep your result
}
print ("For loop complete!")
print ("Program complete!")

# but how to save data?
print (out) # note this is the last one in the loop

# set up a container to catch data
out_save <- c() # empty vector (or box)
out_save

for(i in my_list) {                              # Head of for-loop
  result <- i + add_me # add to the i value
  out <- paste0("Result of iteration: ", i, " is ... ", result, ".") 
  print(out)
  # Sys.sleep(0.5) # comment out to show just how fast R is 
  out_save[i] <- result    # add a new element to out_save to keep your result
  # could also use out_save[i] <- out
}
out_save
str(out_save)

# Can even nest loops
# Note we have i and j for each loop
for (i in c(1, 2, 3, 4, 5)) {
  print (paste ("I am base loop number: ",i))
  Sys.sleep(0.8) # slow it down for example purposes
  for (j in c(1, 2, 3)){ 
    print (paste ("... I am inside loop number: ",j))
    Sys.sleep(0.8) # slow it down for example purposes
  }
}

# loop exercise
my_favourite_animals <- c ("dog", "cat", "Andean Condor")
my_animal_rank <- c (1, 2, 3)
str(my_animal_rank)
my_animal_rank[2]
animal_sequence <- 1:3

for(i in animal_sequence) {                              
  animal_number <- my_animal_rank[i]
  animal_favourite <- my_favourite_animals[i]
  out <- paste0("My number ", animal_number, " is a ", animal_favourite, ".") 
  print(out)                                   
  Sys.sleep(0.8) # slow it down for example purposes
}
print ("For loop complete!")
print ("Program complete!")


# 3.1.2 if and if-else statements ####

#if (this) { that }
# OR
# if (no_milk) { buy milk}
#Example
x <- 1
x # what is x? here we know x is = to 1 because we have defined it
x == 1 # what is x?

if (x == 1) {
  x <- "wow"
}
x
x <- 2 # now rerun the above if statement
x == 1

## Functions ####
# temp_C <- (temp_F - 32) * 5 / 9
# could do: 
temp_C <- (100 - 32) * 5 / 9
temp_C <- (200 - 32) * 5 / 9
#We could write a function of this if we needed to do it many times
fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}
fahrenheit_to_celsius(100)
fahrenheit_to_celsius(200)

# Exercise Function to convert C to F
Celsius_to_farenheit <- function(temp_C) {
  temp_F <- (temp_C * 9/5) + 32
  return(temp_F)
}
Celsius_to_farenheit(0)
Celsius_to_farenheit(20)
Celsius_to_farenheit(40)

#3.1.3 Data Frames ####
my_dataframe <- data.frame (no = c(1,2,3), c("Tracey", "John", "Pete"),
                            c(T, F, T))
my_dataframe
str(my_dataframe)

#sometimes R gets the data type wrong so best to check
my_dataframe$no = as.factor(my_dataframe$no)
str(my_dataframe)

# You have learned some fundamental skills:
# 1. Knowledge of types and structures
# 2. Knowledge of functions
# 3. Control structures.