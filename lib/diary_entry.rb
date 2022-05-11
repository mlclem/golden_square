class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    if title.is_a?(String) && title.length > 0
      @title = title
      @chunk_counter = 0
    else
      fail "Title must be a string longer than 0"
    end
    if contents.is_a?(String) && contents.length > 0
      @contents = contents
    else
      fail "Contents must be a string longer than 0"
    end
  end

  def title
    # Returns the title as a string
    return @title
  end

  def contents
    # Returns the contents as a string
    return @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    return @contents.count(" ") + 1
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    if wpm > 0
      return (count_words / wpm)
    else
      fail "Words per minute cannot be less than 1"
    end
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    chunk_total = (wpm * minutes)

    index_end = (chunk_total - 1).to_i

    @contents_array = @contents.split(" ")

    if chunk_total < @contents_array.length
      chunk = @contents_array[0..index_end].join(" ")
      @contents_array.delete(chunk)
      return chunk
    else
      chunk = @contents_array[0..-1].join(" ")
      @contents_array.delete(chunk)
      return chunk
    end
  end
end