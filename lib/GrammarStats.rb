class GrammarStats
  def initialize
    @text = text
    @@percentage = 0.0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

    text_array = text.split("")

    punctuation_array = ["!","?",".",";",":"]

    if text


  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end