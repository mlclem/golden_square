=begin
A method called make_snippet that takes a string as an argument 
and returns the first five words and then a '...' 
if there are more than that.
=end

def make_snippet(str)
  split_array = str.split(" ")
  if split_array.length > 5
    return "#{split_array[0..4].join(" ")}..."
  else
    return str
  end
end