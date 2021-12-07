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
