# Diary Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

# Experience class & Diary class

As a user
So that I can reflect on my experiences
I want to read my past diary entries

# Diary class - method to add experiences, method to report diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

# Diary class - method to return entry based on WPM * minutes calculation

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

# Task class & TodoList class, method to add Tasks to Todo list, method to return incomplete tasks

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

# Contacts class & Phonebook class, method to get contacts & method to report phonebook

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_


  ┌──────────────────────────┐        ┌─────────────────┐
  │   Experience class       │        │ Contact class   │
  │                │         │        │                 │
  │    initialize  │         │        │  initialize   │ │
  └────────────────┼─────────┘        └───────────────┼─┘
                   │                                  │
┌──────────────────┴────────────┐                     │
│  Diary class     ▼            │   ┌─────────────────┴──────┐
│                               │   │Phonebook class  ▼      │
│ add experiences to diary list │   │                        │
│                               │   │Get contact from diary  │
│ return all diary entries     ─┼───┼─►                      │
│                               │   │List all phonenumbers   │
│ wpm calc retrun best diary    │   │                        │
│ entry based on time           │   └────────────────────────┘
└───────────────────────────────┘

     ┌────────────────┐
     │                │
     │  Task class  │ │
     │              │ │
     │  initialize  │ │                                                         
     │              │ │
     └──────────────┼─┘
                    │
  ┌─────────────────┴────────┐
  │ TodoList class  ▼        │
  │                          |
  │ add task to Todo list    │
  │                          │
  │ mark complete            │
  │                          │
  │ return incomplete Todos  │
  │                          │
  └──────────────────────────┘


_Also design the interface of each class in more detail._

```ruby
class Experience
  def initialize
  end
end

class Diary
  def initialize
  end

  def add_entry(experience)
    # add experience to diary
  end

  def report_entries
    # return all entries
  end

  def find_best_entry(wpm,minutes)
    # return best entry based on Word Per Minute calculation
  end
end

class Task
  def initialize 
  end
end

class TodoList
  def initialize
  end

  def add_todo(task)
    # add task to todo list
  end

  def mark_done(todo)
    # change status to complete
  end

  def report_todos
    # return all incomplete todos
  end
end

class Contact
  def initialize
  end
end

class PhoneBook
  def initialize
  end

  def get_contact(diary_entry)
    # Returns phone number and possibly name from diary entries
  end

  def report_phone_numbers
    # Returns a list of all phone numbers / possibly contact names
  end
end

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby

# 1 Create new experience instance, add to diary, report all diary entries

empty_diary = Diary.new
cut_my_hair = Experience.new("Haircut","my head feels colder")
empty_diary.add_entry(cut_my_hair)
empty_diary.report_entries
# => report entries should return an object for cut_my_hair diary entry

# 2 Create multiple experience instances, add to diary, find best entry based on WPM method

journal = Diary.new
got_a_pet = Experience.new("first pet","I got a goldfish for christmas")
lost_first_pet = Experience.new("lost fish","my goldfish has escaped somehow...")
count_count = Experience.new("counting","1 2 3" * 58 + "4 5")
journal.add_entry(got_a_pet)
journal.add_entry(lost_first_pet )
journal.add_entry(count_count)
journal.find_best_entry(30,2)
# => find_best_entry should return count_count object as it's 60 words (wpm calc 30 * 2 = 60)

# 3 Create new task, add task to TodoList, report TodoList

today_todo = TodoList.new
spring_clean = Task.new("Hoover the house")
today_todo.add_todo(spring_clean)
today_todo.report_todos
# => Should return spring_clean in todo list 

# 4 Create multiple tasks, mark one task complete, report TodoList

weeks_todos = TodoList.new
laundry = Task.new("Do the laundry")
pay_bills = Task.new("Pay the bills")
fort = task.new("Dismantle pillow fort")
weeks_todos.mark_done(fort)
weeks_todos.report_todos
# => Should return laundry & pay_bills but not fort

# 5 Create experience with phone number, add to diary, use phonebook class to create contact, then report phone number

new_pb = PhoneBook.new
met_person = Experience.new("I met a person called "bob" and their number is 07711 123 765")
new_pb.add_entry(met_person)
new_pb.get_contact
new_pb.report_phone_numbers
# => Should return phone number / contact details added in met_person

```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
