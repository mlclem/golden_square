require 'GrammarStats'

RSpec.describe GrammarStats do
  it "initializes and can accept methods" do
    grammar1 = GrammarStats.new
    expect(grammar1.check("This should be considered correct?")).to eq true
    expect(grammar1.percentage_good).to eq 100  
  end

  context "if multiple texts are stored with a mix of false & true" do
    it "returns the correct percentage" do
      grammar2 = GrammarStats.new
      grammar2.check("This should also be correct;")
      grammar2.check("True again this should be!")
      grammar2.check("this is defintely not correct 2")
      expect(grammar2.percentage_good).to eq 67  
    end
  end

end
