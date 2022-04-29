require 'present'

Rspec.describe Present do
  context when "when already wrapped an error is displayed" do
    it "fails" do
      gift = Present.new("a biscuit")
      expect { gift.wrap() }.to raise_error "A contents has already been wrapped." 
    end
  end

  context when "when no contents wrapped an error is displayed" do
    it fails do
      gift = Present.new("")
      expect { gift.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end
end