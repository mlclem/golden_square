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

  def contents
    return @diary_array.contents
  end

  def find_best_entry(wpm,minutes)
    total_words = (wpm.to_f * minutes.to_f).round(0)
  

  end
end