class Diary
  def initialize
    @diary_array = []
  end
  
  def add_entry(experience)
    @diary_array << experience
  end

  def report_entries
    return @diary_array
  end

  def find_best_entry(wpm,minutes)
    total_words = (wpm.to_f * minutes.to_f).round(0)
  
    @diary_array.find {|entry| entry.contents.count(" ") + 1 == total_words}

  end
end