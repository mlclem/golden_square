class TodoList
  def initialize
    @todos = []
  end

  def add_todo(task)
    # add task to todo list
    @todos << task
  end

  def mark_done(todo)
    # change status to complete
    @todos.delete(todo)
    
  end

  def report_todos
    # return all incomplete todos
    if @todos == []
      return nil
    else
      return @todos
    end

  end
end