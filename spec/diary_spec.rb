require 'diary'
require 'experience'

RSpec.describe Diary do
  it "constructs correctly" do
    blank_diary = Diary.new
    expect(blank_diary).to eq blank_diary
  end

  context "If no diary entry is added" do
    it "the report method returns nil" do
      blank_diary = Diary.new
      expect(blank_diary.report_entries).to eq nil
    end
  end


end
