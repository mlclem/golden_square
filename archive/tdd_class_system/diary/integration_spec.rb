require 'diary_entry'
require 'diary'

RSpec.describe "Integration tests" do
  context "If entries are added" do
    it "the all method returns them" do
      diary_22 = Diary.new
      entry1 = DiaryEntry.new("A title","Some contents")
      entry2 = DiaryEntry.new("A title","Some contents")
      diary_22.add(entry1)
      diary_22.add(entry2)
      expect(diary_22.all).to eq [entry1,entry2]
    end
  end

  it "count words method returns the correct number of words for all entries" do
    journal = Diary.new
    monday = DiaryEntry.new("monday","one")
    tuesday = DiaryEntry.new("tuesday","two three")
    wednesday =DiaryEntry.new("wednesday","four five six")
    journal.add(monday)
    journal.add(tuesday)
    journal.add(wednesday)
    expect(journal.count_words).to eq 6
  end

  it "calculates reading time for all entries" do
    dear_diary = Diary.new
    secrets = DiaryEntry.new("Secrets","secret " * 29 + "secret")
    gossip = DiaryEntry.new("Gossip","gossip " * 29 + "gossip")
    dear_diary.add(secrets)
    dear_diary.add(gossip)
    expect(dear_diary.reading_time(30)).to eq 2
  end

  it "Correctly calculates the best entry based on reading time" do
    diary = Diary.new
    short_entry = DiaryEntry.new("short","Just a few words")
    med_entry = DiaryEntry.new("medium","More words " * 19 + "still")
    long_entry = DiaryEntry.new("long","Words" * 99 + "words")
    diary.add(short_entry)
    diary.add(med_entry)
    diary.add(long_entry)
    expect(diary.find_best_entry_for_reading_time(8, 10)).to eq med_entry
  end
end
