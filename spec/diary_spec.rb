require 'diary'

RSpec.describe DiaryEntry do
  it "holds a list of diary entry titles" do
    diary = DiaryEntry.new("Dear Diary","I stole the town mascot ... again")
    expect(diary.title).to eq "Dear Diary"
    expect(diary.contents).to eq "I stole the town mascot ... again"
    expect(diary.count_words).to eq 7
    expect(diary.reading_time(7)).to eq 1
    expect(diary.reading_chunk(5,1)).to eq "I stole the town mascot"
    expect(diary.reading_chunk(7,1)).to eq "I stole the town mascot ... again"
  end

  describe "count_words" do
    it "returns 0 if diary entry is emptpy" do
      diary = DiaryEntry.new("OMG!","")
      expect(diary.count_words).to eq 0
    end
  end

  describe "reading_time" do
   it "returns a whole number of minutes for reading time, rounded up" do
      diary = DiaryEntry.new("OMG!","wordy " * 860)
      expect(diary.reading_time(30)).to eq 29
    end
  end

  describe "reading_chunk" do
    it "returns the correct number of words per wpm" do
       diary = DiaryEntry.new("Doing stuff","verbage " * 100)
       expect(diary.reading_chunk(5,1)).to eq "verbage verbage verbage verbage verbage"
     end
   end

end
