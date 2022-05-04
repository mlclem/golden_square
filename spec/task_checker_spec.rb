require 'task_checker'

RSpec.describe "task_checker method" do
  context "if argument is a string containing #TODO" do
    it "returns true" do
      expect(task_checker("task #TODO")).to eq true
    end
  end

  context "if argument contains TODO but no hashtag" do
    it "returns false" do
      expect(task_checker("task TODO")).to eq false
    end
  end

  context "if argument contains #todo downcase" do
    it "returns false" do
      expect(task_checker("task #todo")).to eq false
    end
  end

  context "if argument is just a string, no todo" do
    it "returns false" do
      expect(task_checker("task")).to eq false
    end
  end

  context "if argument is not a string" do
    it "raises an error" do
      expect { task_checker(1234) }.to raise_error "Please enter a string"
    end
  end

  context "if argument is nil" do
    it "raises an error" do
      expect { task_checker(1234) }.to raise_error "Please enter a string"
    end
  end

end