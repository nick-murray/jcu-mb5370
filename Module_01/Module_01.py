#------------------------------------#
# MB5370: Introduction to Programming
# Nick Murray
# February 2022

# Workspace:
# C:/Murray_Git/MB5370/Module_01
#------------------------------------#

#------------------------------------#
# Workshop 01. Introduction ####


#%%
# # 2.3.6 Getting started ####
# This section introduces us to Python by using it as a simple calculator.

2+1

#Making a sequence of numbers. Here we want a list of numbers ranging from 1 to 30 at increments of 1

numberslist = list(range(1,30,1)) # note that range() function does not include the end integer and only lists 1:49


#to get the index we would use index = list.index(value)
index = numberslist.index(23)
print(index)




#%%
#2.3.7 Variables, Objects and Assignment
# Variables and Assignment ####
# This section focuses on understanding how data is stored in Python and why that matters.

#How to store my data?
age = 25
first_name = 'Bill'
age + 1
age + age
#See Python Styling guide for more information about styling rules

#%%
# 2.3.0 Using built-in functions

years_old = 25.7
round(years_old) #Here, round is a built-in function

import math #the floor function must be called from the math module, which we must first import into our workspace

math.floor(years_old) #then we use the math.floor function to round the number down
math.ceil(years_old) #this will round the number up
#to get information about an object, like math.floor, type it into the object investigator on the "Help" tab near your console

#%%
#Exercise: the .join() function in python is similar to the paste function in R


name_object = 'Bob'
age_object = 25.7
words = [name_object +" is " + age_object + " years old."]
" ".join(words)  # fails because joining different types
words = [name_object +" is " + str(age_object) + " years old."]
" ".join(words) 
words = [name_object +" is " + "age_object" + " years old."]
" ".join(words) 

# The “ “ before the .join() indicates we want a space between our words
# Here we can use the join function, but only if all of our data is a string type

# can also use the print statement, which is fine
print (name_object +" is " + age_object + " years old.")
print (name_object +" is " + str(age_object) + " years old.")
print (name_object +" is " + "age_object" + " years old.")

#NOTE: If you didn't include the "" around "25.7", python would read this as a float type, and the join function would produce an error



#%%
#2.3.10 Debugging
# Misconceptions
# variables in programs do not work the same way as they do in spreadsheets

grade = 55
total = grade + 10
print (total)
grade = 90
print (total) # value of total is a spreadsheet will be 100, but in programming a variable holds the value it was assigned (65)
total =  grade + 10
print (total) # executed in the way it was defined

# What will this code do?
p = 2
z = 5
out = p * z  # What should the value of out be?
print (out) # What is the value of out? Is it the same as expected?

# debugging errors
out = p * a # undefined variable.
## > NameError: name 'a' is not defined
out = p * z

# Testing
x = 1
type(x) #here we can use the built in type() function which returns integer type for x

b = "Mary"
type(b) #this returns string

# Exercise What's wrong with this code?
my_quiz: ("uno",  
           "dos",
           "tres",
           "quatro"
           "cinco")
print (my_quis)






#%%
# 2.3.11 Data types
# NUMERIC data types: int, float, complex.
# STRING data types: str.
# SEQUENCE types: list, tuple, range.
# BINARY types: bytes, bytearray, memoryview.
# MAPPING data type: dict.
# BOOLEAN type: bool.

#Top 4 types are numeric, string (character in R), integer, and Boolean (logical in R)

type() #type function is a great way to check your data type

len() #gives the length of an object

getattr() #gives the attributes of an object


#Exercise: Make a variable for each of the 4 data types and check it

my_numericfloat_variable = 78.62
type(my_numericfloat_variable)


my_integer_variable = 78
type(my_integer_variable)

my_string_variable = "Piglet"
type(my_string_variable)

my_boolean_variable = True
type(my_boolean_variable)
