class Experience
  def initialize(title, contents)
    if title.is_a?(String) && title.length < 1
      fail "Title cannot be empty"
    else
      @title = title
    end
    if contents.is_a?(String) && contents.length < 1
      fail "Contents cannot be empty"
    else
    @contents = contents
    end
  end

  def contents
    return @contents
  end

  def count_words 
    return (contents.count(" ") + 1)
  end
end