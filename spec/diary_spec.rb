require 'diary'

RSpec.describe Diary do
  it "constructs correctly" do
    new_diary = Diary.new
    expect(new_diary).to eq new_diary
  end

  context "If a diary instance exists" do
    it "report_entries returns the diary object" do
      old_diary = Diary.new
      expect(old_diary.report_entries).to eq []
    end
  end

end
