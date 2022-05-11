class Todo
  def initialize(task) # task is a string
    # ...
    if task.is_a?(String) && task.length > 0
      @task = task
      @is_done = false
    else 
      fail "Task cannot be an empty string!!!"
    end 
  end

  def task
    # Returns the task as a string
    return @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    if @is_done == true
      fail "This task is already done!!!"
    end
    @is_done = true
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    return @is_done
  end
end