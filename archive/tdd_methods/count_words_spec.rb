require 'count_words'

RSpec.describe "count_words method" do
  it "returns an empty string" do
    expect(count_words("")).to eq ""
  end

  context "if argument is string"
    it "return number of words in string" do
      expect(count_words("string is some words")).to eq 4
    end
  end