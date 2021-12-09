Project title: 
# Boris bike challenge

Motivation:
# Me and my pair programmer Esther are attempting to complete the 22 exercises of the challenge.

# Build status:
Testing

# User Story:

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

nouns: person, bike, docking station
verbs: use, release, see

____________________________________
person           | use
bike             | working
docking station  | release
------------------------------------

Draw a diagram that shows how your Objects will use Messages to communicate with one another
1. bike ---> working? ---> true / false
2. if 1 is true, docking station ---> release bike


Task 4 objectives:

To complete this challenge, you will need to:
1. Write down the type of error
  NameError

2. Write down the file path where the error happened
   /Users/username/.rvm/rubies/ruby-2.2.2/bin/irb:11:in '<main>'

3. Write down the line number of the error
   irb: 11
 
4. Use the Ruby Documentation to find out what the error means
   Raised when a given name is invalid or undefined.
 
5. Suggest one way of solving the error.
   Define the object to somthing that exisits.