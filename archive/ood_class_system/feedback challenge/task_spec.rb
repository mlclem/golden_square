require 'task'

RSpec.describe Task do
  context "When creating a new instance of task" do
    it "string cannot be empty" do
      expect{ fresh_task = Task.new("") }.to raise_error "String cannot be empty"
    end
  end

  it "The default value of status is incomplete" do
    different_task = Task.new("This is completely different")
    expect(different_task.get_status).to eq "Incomplete"
  end

end

