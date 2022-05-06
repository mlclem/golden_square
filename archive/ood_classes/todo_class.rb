=begin
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

# Todo class - initialize with a hash, add_todo method & report_todos method #

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.  

# Todo class - change status method #

=end

class Todo
  def initialize
    @todo_hash = {}
  end

  def add_todo(text, status = "Incomplete")
    @todo_hash[text] = status
  end

  def report_todos
    return @todo_hash.keys
  end

  def change_status(todo, status = "Complete")
    return @todo_hash.delete(todo)
  end
end