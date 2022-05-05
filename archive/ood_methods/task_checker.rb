# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

def task_checker(task)
  if task != task.to_s
    fail "Please enter a string"
  else
    if task.include? "#TODO"
      return true
    else
      return false
    end
  end
end