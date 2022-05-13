class Task
  def initialize(string, status = "incomplete")
    if string.is_a?(String) && string.length < 1
        fail "string cannot be empty"
    else
        @string = string
        @status = status
    end
  end

end