require 'experience'

RSpec.describe Experience do
  context "If title is empty" do
    it "raises an error" do
      expect{ no_title = Experience.new("","Some contents") }.to raise_error "Title cannot be empty"
    end
  end
  
  context "If contents is empty" do
    it "raises an error" do
      expect{ no_contents = Experience.new("A title","") }.to raise_error "Contents cannot be empty"
    end
  end

end