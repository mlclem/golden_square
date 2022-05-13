require "diary" 
require "experience"
require "todo_list"
require "task"
require "phone_book"

RSpec.describe "Integration tests" do
  context "When new experiences are added to the diary" do
    it "the report method returns all diary entries" do
        empty_diary = Diary.new
        cut_my_hair = Experience.new("Haircut","my head feels colder")
        empty_diary.add_entry(cut_my_hair)
        expect(empty_diary.report_entries).to eq [cut_my_hair]
    end
  end

   
  context "When multiple entries have been added" do
    it "Find best entry method returns the appropriate entry" do
      journal = Diary.new
      got_a_pet = Experience.new("first pet","I got a goldfish for christmas")
      lost_first_pet = Experience.new("lost fish","my goldfish has escaped somehow...")
      count_count = Experience.new("counting","one two " * 4 + "three four")
      journal.add_entry(got_a_pet)
      journal.add_entry(lost_first_pet )
      journal.add_entry(count_count)
      expect(journal.find_best_entry(5,2)).to eq count_count
    end
  end

  context "If tasks have been added to the Todo list" do
      it "The report method returns all tasks" do
        today_todo = TodoList.new
        spring_clean = Task.new("Hoover the house")
        today_todo.add_todo(spring_clean)
        expect(today_todo.report_todos).to eq [spring_clean]
      end
  end

  context "If multiple tasks are added, and one is completed" do
    it "Report only returns incomplete todos" do
      weeks_todos = TodoList.new
      pay_bills = Task.new("Pay the bills")
      laundry = Task.new("Do the laundry")
      fort = Task.new("Dismantle pillow fort")
      weeks_todos.add_todo(pay_bills)
      weeks_todos.add_todo(laundry)
      weeks_todos.add_todo(fort)
      weeks_todos.mark_done(fort)
      expect(weeks_todos.report_todos).to eq [pay_bills,laundry]
    end

  end

  context "When I add diary entry, in the phone number" do
    it "I can use get contacts to extract the phone number" do
        diary = Diary.new
        met_person = Experience.new("met person","I met a person called 'bob' and their number is 07711 123 765")
        diary.add_entry(met_person)
        diary.get_contact
        expect(diary.report_phone_numbers).to eq ["bob", "07711 123 765"]
    end
  end

end

