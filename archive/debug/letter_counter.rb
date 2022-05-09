class LetterCounter
  attr_accessor :is_letter?
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0)
    most_common = nil
    most_common_count = 0
  
    @text.chars.each do |char|

      next unless is_letter?(char)
      counter[char] = (counter[char] || 1) + 1
    
      if counter[char] > most_common_count
        most_common = char
        most_common_count += 1
      end
    
    
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("IIII bb a 8")
counter.calculate_most_common

# Intended output:
# [2, "i"]