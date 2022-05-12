require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    new_diary = DiaryEntry.new("Monday","I got out of bed")
    expect(new_diary.title).to eq "Monday"
    expect(new_diary.contents).to eq "I got out of bed"
  end

  context "title must be a valid string" do
    it "raises an error if title not a string > 0" do
      expect { title_diary = DiaryEntry.new("","Test title")  }.to raise_error "Title must be a string longer than 0"
    end
  end
  
  context "contents must be a valid string" do
    it "raises an error if contents not a string > 0" do
      expect { title_diary = DiaryEntry.new("Test contents","")  }.to raise_error "Contents must be a string longer than 0"
    end
  end

  context "Count words method can be used" do
    it "returns the correct number of words" do
      number_diary = DiaryEntry.new("Maths <3", "one two three four five")
      expect(number_diary.count_words).to eq 5
    end
  end

  context "Reading time method WPM can't accept 0" do
    it "raises an error if wpm < 1" do
      time_diary = DiaryEntry.new("Hours","minutes, seconds and smaller units of time")
      expect { time_diary.reading_time(0) }.to raise_error "Words per minute cannot be less than 1"
    end
  end

  context "given valid input" do
    it "returns the correct integer based on WPM calculation" do
      wpm_diary = DiaryEntry.new("reading time","one two three four five six seven eight nine ten")
      expect(wpm_diary.reading_time(10)).to eq 1
    end
  end

  context "given a more complex calculation" do
    it "rounds correctly" do
      mathy_diary = DiaryEntry.new("odd number","word " * 66 + "word")
      expect(mathy_diary.reading_time(5)).to eq 13
    end
  end

  context "reading chunk method wpm & minutes must be > 0" do
    it "raises an error if wpm & minute are < 1" do
      chunk_diary = DiaryEntry.new("Poem",
        "In the lull, the afternoon sun warms the linseed field. The flowers are quiet,        
        their bright subdued in the green while the mind wanders to the emerald mosque upon the hill,
        built around a flowing spring, the easy absolutions and ablutions in that mosque where the spring water
        has been let loose to meander over marble courtyards and inner chambers,      
        across the geometric, green-tiled floor that cools the heels of the faithful.")
        expect(chunk_diary.reading_chunk(15,3)).to eq "In the lull, the afternoon sun warms the linseed field. The flowers are quiet, their bright subdued in the green while the mind wanders to the emerald mosque upon the hill, built around a flowing spring, the easy absolutions and ablutions in that mosque where"
        expect(chunk_diary.reading_chunk(10,3)).to eq "the spring water has been let loose to meander over marble courtyards and inner chambers, across the geometric, green-tiled floor that cools the heels of the faithful."
      end
    end
end