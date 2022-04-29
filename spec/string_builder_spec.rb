require 'string_builder'

RSpec.describe StringBuilder do
  it "return an empty string if nothing added" do
    new_string = StringBuilder.new
    result = new_string.output()
    expect(result).to eq ""
  end
  

  context "if a strings is added, it is reported" do
    it "outputs the string added" do
      new_string = StringBuilder.new
      new_string.add("Shiny new string")
      result = new_string.output()
      expect(result).to eq "Shiny new string"
    end
  end
  
  context "if mutltiple strings are added" do
    it "it will report multiple strings" do
      new_string = StringBuilder.new
      new_string.add("look ")
      new_string.add("more ")
      new_string.add("strings ")
      new_string.add("get ")
      new_string.add("added")
      result = new_string.output()
      expect(result).to eq "look more strings get added"
    end
  end
end