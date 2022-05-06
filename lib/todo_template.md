# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

# Todo class - initialize with a hash, add_todo method & report_todos method #

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

# Todo class - update status method & report_completed method #

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Todo
  def initialize
     # Todo hash with Key = Tasks & Value = Status
  end

  def add_todo(text)
    # Adds text to hash with default value of incomplete
  end

  def report_todo
    # Returns todo hash keys only * won't need status as completed will be removed
  end

  def change_status(todo, status) 
    # Updates todo status in hash
    # Uses select to push todo completed into a array
    # Deletes key value pair from hash
  end

  def report_completed
    # reports all completed tasks
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# Create new instance, add todo objects and report list of objects
may_todo = Todo.new
may_todo.add_todo("Plant flowers")
may_todo.add_todo("Clean house")
may_todo.report_todos
# Expect both todos to be reported

# Change status of todo object
june_todo = Todo.new
june_todo.add_todo("Plant flowers")
june_todo.add_todo("Buy BBQ")
june_todo.change_status("Plant flowers","Complete")
june_todo.report_todos
# Expect only bbq to be reported


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._