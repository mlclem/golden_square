require 'task'

class TodoList
  def initialize
    @todos = []
  end
  # add task to todo list
  def add_todo(task)
    @todos << task
  end

  # change status to complete
  def mark_done(todo)
    @status = "Complete"
    @todos.delete(todo)
  end

  # return all incomplete todos
  def report_todos
    if @todos == []
      return nil
    else
      return @todos
    end
  end
end