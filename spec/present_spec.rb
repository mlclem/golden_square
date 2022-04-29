require 'present'

RSpec.describe Present do
  context "when already wrapped an error is displayed" do
    it "fails" do
      gift = Present.new
      gift.wrap("a biscuit")
      expect { gift.wrap("a bisvuit") }.to raise_error "A contents has already been wrapped." 
    end
  end

  context "when no contents wrapped an error is displayed" do
    it "fails" do
      gift = Present.new()
      expect { gift.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end

  it "can correctly wrap and unwrap a gift without error" do
    gift = Present.new
    gift.wrap("A Bruce Forsyth mask!")
    expect(gift.unwrap()).to eq "A Bruce Forsyth mask!"
  end
end