# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

# Experiences class - create new experiences method #
# Possible daily reminder to create diary entry method? #

As a user
So that I can reflect on my experiences
I want to read my past diary entries

# Diary class - input experiences as diary entry and report diary entries methods #

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

# Diary class - WPM / reading chunk method for multiple entries #

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

# ToDo class - Add, remove and report methods #

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

# Contacts class - Search diary entry then store name and phone numbers #
# Phone book class - report all phone numbers from contacts #

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
# see "multiclass_design_diagram.md #

```

_Also design the interface of each class in more detail._

```ruby
class Experiences
  # Initializes with a blank experiences array
  def initialize
    @experiences_array = []
  end

  # Method to add new experiences to array
  def add_experience(string)
    @experiences_array.push(string)
  end

end

class Diary
  # Initializes with new blank diary array
  def initialize
    # Diary has contains diary entry key and date value
    @diary_hash = {}}
    Todo.new
    PhoneBook.new
    Experiences.new
  end

  # Pushes experience into diary array
  def add_entry(experience)
    @diary_array.push(experience)
    contact_search(experience)
  end

  # Report diary entries
  def report_entries
    return @diary_array
  end

  # WPM / time available calculation & return relevant entries
  def reading_time_select(wpm,minutes)
  # WPM calc
  end

  # Daily reminder to create diary entries
  def diary_reminder
    # if last diary entry date is before or not today, remind 
  end
end

class Todo
  # Initializes with a blank todo list array
  def initialize
    @todo_array = []
  end

  # Method to add todo entries to todo list array
  def add_todo(string)
    @todo_array.push(string)
  end

  # Method to report the todo list

  def report_todo
    return @todo_array
  end

  # Method to remove todo from todo list array
end

class Contacts
  def initialize
    @name = name
    @phone_number = phone_number
  end

  # Method to search diary entry for contacts
  def contact_search
    # string search method possibly .include? or .scan
    # called during Diary.add_entry method
    # 
  end
end

class PhoneBook
  # Initialize with hash to store contacts & phone numbers
  def intialize
    @phone_book_hash = {:phone_number, :name}
  end

  # Method to return all phone numbers
  def report_phone
    return @phone_book_hash
    # return @phone_book_hash.key
  end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE

# Creating a new experiences instance, add experiences as diary entries then report all entries
new_diary = Diary.new
exp.add_experience("I went to the shops")
exp.add_experience("I went to the beach")
new_diary.add_entry(exp)
new_diary.report_entries

# Use WPM / reading chunk to return diary entries that can be read in calculated time
new_diary = Diary.new
exp.add_experience("I went to the shops")
exp.add_experience("I went to the beach")
exp.add_experience("Really really long long entry blah blah blah")
new_diary.add_entry(exp)
new_diary.reading_time_select(5,2)

# Todo list
new_diary = Diary.new
Todo.add_todo("Buy milk")
Todo.add_todo("get dog")
Todo.report_todo

# Report phone numbers
new_diary = Diary.new
exp.add_experience("I went to the shops")
new_diary.add_entry(exp) # Contact search method is called in here
new_diary.add_entry(exp) # Contact search method is called in here
report_phone

```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# Creates a new instance of diary

# Creates a new instance of diary
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
