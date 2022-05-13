require 'experience'

class Diary
  def initialize
    @entries = []
  end

  # add experience to diary
  def add_entry(experience)
    @entries << experience    
  end

  # return all entries
  def report_entries
    if @entries == []
      return nil
    else
    return @entries
    end
  end

  # return best entry based on Word Per Minute calculation
  def find_best_entry(wpm,minutes)
    if wpm < 1
      fail "Words per Minute cannot be less than 1"
    elsif minutes < 1
      fail "Minutes cannot be less than 1"
    else
      total_words = (wpm.to_f * minutes.to_f).round(0)
      best_entries = @entries.select {|entry| (entry.count_words) <= total_words}
      best_entry = best_entries.bsearch {|entry| entry.count_words == total_words}
      return best_entry
    end
  end
end