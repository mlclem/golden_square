class Task
  def initialize(string, status = "Incomplete")
    if string.is_a?(String) && string.length < 1
      fail "String cannot be empty"
    else
    @string = string
    end
    @status = status
  end

  def get_status
    return @status
  end
end