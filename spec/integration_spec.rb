require "experience"
require 'diary'

RSpec.describe "Integration tests" do
  context "experiences can be added to the diary" do
    it "reports a list of all diary entries" do
      empty_diary = Diary.new
      cut_my_hair = Experience.new("Haircut","my head feels colder")
      empty_diary.add_entry(cut_my_hair)
      expect(empty_diary.report_entries).to eq [cut_my_hair]
    end
  end

  context "Multiple experiences can be added to the diary" do
    it "reports a list of all diary entries" do
      empty_diary = Diary.new
      cut_my_hair = Experience.new("Haircut","my head feels colder")
      teeth_fixed = Experience.new("Dentist","I got my teeth fixed at the dentist")
      empty_diary.add_entry(cut_my_hair)
      empty_diary.add_entry(teeth_fixed)
      expect(empty_diary.report_entries).to eq [cut_my_hair,teeth_fixed]
    end
  end

 it "The find_best_entry returns the correct object based on WPM calculation" do
    journal = Diary.new
    got_a_pet = Experience.new("first pet","I got a goldfish for christmas")
    lost_first_pet = Experience.new("lost fish","my goldfish has escaped somehow...")
    count_count = Experience.new("counting","1 2 3" * 58 + "4 5")
    journal.add_entry(got_a_pet)
    journal.add_entry(lost_first_pet )
    journal.add_entry(count_count)
    expect(journal.find_best_entry(30,2)).to eq count_count
  end
end