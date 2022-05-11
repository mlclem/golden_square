class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list.push(todo)
  end

  def incomplete
    # Returns all non-done todos
    incomplete_list = []
    if @todo_list == []
      fail "There are no Todos!!!"
    end
    @todo_list.each do |todo|
      if todo.done? == false 
        incomplete_list.push(todo)
      end
    end
    return incomplete_list
  end

  def complete
    complete_list = []
    if @todo_list == []
      fail "There are no Todos!!!"
    end
    @todo_list.each do |todo|
      if todo.done? == true 
        complete_list.push(todo)
      end
    end
    return complete_list
  end

  def give_up!
    # Marks all todos as complete
    @todo_list.each do |todo|
      if todo.done? == false
        todo.mark_done!
      end
    end 
  end
end
