
require 'make_snippet'

RSpec.describe "make_snippet method" do
  context "if given an empty string"
    it "returns an empty string" do
      result =  make_snippet("")
      expect(result).to eq ""
    end

  context "if argument is 5 words or less"
    it "returns the exact same string" do
      expect(make_snippet("A short short string thing")).to eq "A short short string thing"
    end

 context "if argument is more than 5 words"
    it "It returns the first 5 words and ..." do
      expect(make_snippet("A really very long and crazily complex string thing")).to eq "A really very long and..."
    end


end