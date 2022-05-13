
class Contact
  def initialize
    
  end
end

class PhoneBook
  def initialize
    @contacts = []
  end

  def get_contact
    # Returns phone number and possibly name from diary entries
    entries_with_numbers = @entries.each do |entry|
        @name = entry.scan(/'a..z'/)
        @number = entry.scan(/0..9/)
        contact = Contact.new(@name, @number)
    end

  end

  def report_phone_numbers
    # Returns a list of all phone numbers / possibly contact names
    return @contacts
  end
end