require "diary"

RSpec.describe Diary do
  context "If there are no entries" do
    it "The return method returns nil" do
        blank_diary = Diary.new
        expect(blank_diary.report_entries).to eq nil
    end
  end

  context "If wpm is less than 1" do
    it "Raises an error" do
        blank_diary = Diary.new
        experience = Experience.new("title", "contents")
        blank_diary.add_entry(experience)
        expect {blank_diary.find_best_entry(-1, 20)}.to raise_error "wpm cannot be less than 1"
    end

  end

  context "If minute is less than 1" do
    it "Raises an error" do
        blank_diary = Diary.new
        experience = Experience.new("title", "contents")
        blank_diary.add_entry(experience)
        expect {blank_diary.find_best_entry(20, -1)}.to raise_error "minutes cannot be less than 1"
    end
  end

end