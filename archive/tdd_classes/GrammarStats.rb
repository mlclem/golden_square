class GrammarStats
  def initialize
    @@texts_checked = {}
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

    @text = text

    text_array = @text.split("")

    punctuation_array = ["!","?",".",";",":"]

    if text_array[0] == text_array[0].upcase && punctuation_array.include?(text_array[-1])
      result = true
    else
      result = false
    end

    @@texts_checked[@text] = result
    return result
    puts @@texts_checked
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.

    texts_hash_length = @@texts_checked.length
        
    texts_hash_count = @@texts_checked.values.count(true)
    
    percentage = ((texts_hash_count.to_f / texts_hash_length.to_f) * 100).round()
  
    return percentage
  end
end