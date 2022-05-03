# A method called count_words that takes a string as an argument 
# and returns the number of words in that string.

def count_words(str)
  if str.length > 0
  return str.split(" ").length
  else 
    return str
  end
end