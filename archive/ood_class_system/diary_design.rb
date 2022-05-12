> # Multi-Class Planned Design Recipe
> 
> ## 1. Describe the Problem
  
As a user
So that I can record my experiences
I want to keep a regular diary

# Experience class - new instance per experience

As a user
So that I can reflect on my experiences
I want to read my past diary entries

# Diary class - method to add experiences to diary, method to return list of diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

# Diary class - Reading chunk / WPM method

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

# Task class - new instance per task, Todo class - method to add tasks to todo list

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

# Contacts class - new instance per contact, Phonebook class - method to scan diary entries & add phone number, return  

> ## 2. Design the Class System
> 
> Design the interfaces of each of your classes and how they will work together
> to achieve the job of the program. You can use diagrams to visualise the
> relationships between classes.
> 
> Consider pulling out the key verbs and nouns in the problem description to
> help you figure out which classes and methods to have.
> 
> Steps 3, 4, and 5 then operate as a cycle.

class experiences
end

class Diary
end

class Contacts
end

class Phonebook
end

class tasks
end

class Todo
end





> ## 3. Create Examples as Integration Tests
> 
> Create examples of the classes being used together in different situations
> and combinations that reflect the ways in which the system will be used.
> 
> Encode one of these as a test and move to step 4.
> 
> ## 4. Create Examples as Unit Tests
> 
> Create examples, where appropriate, of the behaviour of each relevant class at
> a more granular level of detail.
> 
> Encode one of these as a test and move to step 5.
> 
> ## 5. Implement the Behaviour
> 
> For each example you create as a test, implement the behaviour that allows the
> class to behave according to your example.
> 
> Then return to step 3 until you have addressed the problem you were given. You
> may also need to revise your design, for example if you realise you made a
> mistake earlier.

Copy and fill out [this template](../resources/multi_class_recipe_template.md)
for each of the below exercises.

## Demonstration

[A video demonstration](https://www.youtube.com/watch?v=CkyhW3pNTUY&t=0s)

## Exercise

**This is a process feedback challenge.** That means you should record yourself
doing it and submit that recording to your coach for feedback. [How do I do
this?](../pills/process_feedback_challenges.md)

This is the big one! You might want to start a new RSpec project for this.

Use object-oriented design and test-driven development, backed up by your
debugging and pairing skills, to develop the following program.

> As a user  
> So that I can record my experiences  
> I want to keep a regular diary

> As a user  
> So that I can reflect on my experiences  
> I want to read my past diary entries 

> As a user  
> So that I can reflect on my experiences in my busy day  
> I want to select diary entries to read based on how much time I have and my
> reading speed

> As a user  
> So that I can keep track of my tasks  
> I want to keep a todo list along with my diary

> As a user  
> So that I can keep track of my contacts  
> I want to see a list of all of the mobile phone numbers in all my diary
> entries

Some pointers:

* Remember that user stories don't map to classes 1:1. You'll need to digest the
  full problem and then develop a multi-class system that meets the user's
  needs.
* Don't worry about user interface or input-output. That means you shouldn't be
  using `gets` and only use `puts` for debugging purposes.

After you're done, [submit your recording
here.](https://airtable.com/shrNFgNkPWr3d63Db?prefill_Item=gs_as03)

## Example Solution

There are many ways to solve this exercise, but [here is an example
solution.](https://www.youtube.com/watch?v=CkyhW3pNTUY&t=2046s) Bear in mind
that once you look at it, you may be influenced by my approach and this may
affect how much learning you can get from this exercise. That said, I trust you
to make the right decision.