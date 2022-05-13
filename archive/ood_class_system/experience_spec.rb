require 'experience'

RSpec.describe Experience do
  context "When an experience with an empty title is added" do
    it "Raise an error" do
    expect { no_title = Experience.new("","Some contents") }.to raise_error "Title cannot be empty"
    end
  end

  context "When an experience with empty contents is added" do
    it "Raise an error" do
    expect { no_title = Experience.new("A title","") }.to raise_error "Contents cannot be empty"
    end
  end

end