class Experiences
  def initialize(text)
    @text = text
  end
  
  def get_experience
    return @text
  end
end

class Diary
  def initialize
    @diary = []
    Todo.new
    PhoneBook.new
  end

  def add_experience(experience)
    @diary.push(experience)
  end

  def return_diary()
    return @diary
  end

  def wpm_diary(wpm,minutes)
    #wpm calculation 
    #based on calculation return matching diary entries
  end

  def search_phone_number()
    # searches diary entry for phone number 
    # adds phone number to array or hash
    # use .scan
  end
end

class Todo
=begin
def print_todos(array)
  puts array.join("\n")
end

def add_todo(array, value)
  array.push(value)
end

def remove_todo(array, value)
  array.each do |element|
    if value == element
      index = array.index(value)
      array.delete_at(index)
    end
  end
end
=end
end

class PhoneBook

  def return_phone_number
    # return list of all phone numbers
  end

end

class contacts
  def initialize
    @first_name
    @last_name
    @phone_number
  end
end