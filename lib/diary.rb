
class Diary
  def initialize
    @diary_array = []
  end

  def add(entry) 
    # entry is an instance of DiaryEntry
    # doesn't return anything!
    @diary_array << entry
  end

  def all
    # Returns a list of instances of DiaryEntry
    return @diary_array
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
    counter = 0
    @diary_array.each do |entry|
      counter += entry.count_words
    end
    return counter
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
    return (count_words / wpm)
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end

end