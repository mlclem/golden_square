class Diary
    def initialize
      @entries = []
      @phone_book = []
    end
  
    def add_entry(experience)
      # add experience to diary
      @entries << experience
    end
  
    def report_entries
      # return all entries
      if @entries == []
        return nil
      else
        return @entries
      end
    end
  
    def find_best_entry(wpm,minutes)
      # return best entry based on Word Per Minute calculation
      if wpm < 1
        fail "wpm cannot be less than 1"
      elsif minutes < 1
        fail "minutes cannot be less than 1"
      else
        total_words = (wpm.to_f * minutes.to_f).round(0)
        best_entries = @entries.select {|entry| (entry.count_words) <= total_words}
        best_entry = best_entries.max_by {|entry| entry.count_words}
      return best_entry
      end
    end


  class Contact
    def initialize(name, number)
      @name = name
      @number = number
    end

    def report_name
      return @name
    end

    def report_number
      return @number
    end
  end



  def get_contact
    # Returns phone number and possibly name from diary entries
    entries_with_numbers = @entries.each do |entry|
        name = entry.contents.scan('bob')

        number = entry.contents.scan("07711 123 765")
  
        contact = Contact.new(name, number)

        @phone_book.push(contact)
    end
  end

  def report_phone_numbers
    # Returns a list of all phone numbers / possibly contact names


    return phone_string
  end

end


