require 'diary'
require 'diary_entry'

RSpec.describe "Integration" do
  context "When an entry is added" do
    it "it is returned in a list of all entries" do
      diary_22 = Diary.new
      entry1 = DiaryEntry.new("A bad day","I didn't have a very good day today")
      diary_22.add(entry1)
      expect(diary_22.all). to eq [entry1]
    end
  end

  context "when multiple entries are added" do
    it "count_words returns the total for all entries" do
      journal = Diary.new
      monday = DiaryEntry.new("monday","I went to buy the paper")
      tuesday = DiaryEntry.new("tuesday","I fed the ducks in the pond")
      wednesday =DiaryEntry.new("wednesday","I went for a walk round the park")
      journal.add(monday)
      journal.add(tuesday)
      journal.add(wednesday)
      expect(journal.count_words).to eq 21
    end
  
    it "calculates the reading time for all entries" do
      dear_diary = Diary.new
      secrets = DiaryEntry.new("Secrets","I've been told too many secrets to keep to myself")
      gossip = DiaryEntry.new("Gossip","I told all the secrets I wasn't meant to tell to anyone")
      dear_diary.add(secrets)
      dear_diary.add(gossip)
      expect(dear_diary.reading_time(10)).to eq 2
    end

    it "returns the most suitable entry for reading time specified" do
      diary = Diary.new
      short_entry = DiaryEntry.new("Short","Not much happpened")
      mid_entry = DiaryEntry.new("Mid", "one " * 30)
      long_entry = DiaryEntry.new("Long","Lots of words " * 60)
      diary.add(short_entry)
      diary.add(mid_entry)
      diary.add(long_entry)
      expect(diary.find_best_entry_for_reading_time(30, 1)).to eq mid_entry
    end
  end 
end