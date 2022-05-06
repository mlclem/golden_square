=begin
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.
=end

class Todo
  def initialize
    @todo_hash = {}
  end

  def add_todo(text, status = "Incomplete")
    @text = text
    @status = status
    
    return @todo_hash[text] = status
  end

  def report_todos
    return @todo_hash.keys
    
  end
end