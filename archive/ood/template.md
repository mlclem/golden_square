# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

# task_checker return a boolean based on whether a string contains "#TODO" or not
truthy_value = task_checker(wordy_string)

wordy_string: a string (e.g. "task #TODO")
truthy_value: a boolean (e.g. true || false)

# The method only returns the boolean value and doesn't do anything else to the string
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

task_checker("task #TODO") => true
task_checker("task TODO") => false
task_checker("task #todo") => false
task_checker("task") => false
task_checker(1234) => raise an error
task_checker(nil) => raise an error
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

