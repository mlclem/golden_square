
require 'diary'
require 'experience'
require 'task'
require 'todo_list'

RSpec.describe "Integration tests" do
  context "When an experience is added to the diary" do
    it "the report method returns all diary entries" do
      empty_diary = Diary.new
      cut_my_hair = Experience.new("Haircut","my head feels colder")
      empty_diary.add_entry(cut_my_hair)
      expect(empty_diary.report_entries).to eq [cut_my_hair]
    end
  end

  context "When multiple experiences have been added" do
    it "the find_best_entry method returns the most appropriate entry" do
      journal = Diary.new
      got_a_pet = Experience.new("first pet","I got a goldfish for christmas")
      lost_first_pet = Experience.new("lost fish","my goldfish has escaped somehow...")
      count_count = Experience.new("counting","one two " * 59 + "three four")
      journal.add_entry(got_a_pet)
      journal.add_entry(lost_first_pet )
      journal.add_entry(count_count)
      expect(journal.find_best_entry(60,2)).to eq count_count
    end
  end

  context "When using the find_best_entry method" do
    it "words per minute can't be < 1" do
      no_minute = Diary.new
      timeless = Experience.new("Time loop","Fell into a time loop")
      no_minute.add_entry(timeless)
      expect{ no_minute.find_best_entry(0,1) }.to raise_error "Words per Minute cannot be less than 1"
      expect{ no_minute.find_best_entry(-1,1) }.to raise_error "Words per Minute cannot be less than 1"
    end
  end
      

  context "When using the find_best_entry method" do
    it "minutes can't be < 1" do
      no_minute = Diary.new
      timeless = Experience.new("Time loop","Fell into a time loop")
      no_minute.add_entry(timeless)
      expect{ no_minute.find_best_entry(30,-6) }.to raise_error "Minutes cannot be less than 1"
      expect{ no_minute.find_best_entry(20,0) }.to raise_error "Minutes cannot be less than 1"
    end
  end
  
  context "When tasks are added to the Todo List" do
    it "the report method returns all todos" do
      new_journal = Diary.new
      spring_clean = Task.new("Hoover the house")
      new_journal.add_todo(spring_clean)
      new_journal.report_todos
    end
  end

end