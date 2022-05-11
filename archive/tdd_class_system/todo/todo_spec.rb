require 'todo'

RSpec.describe "todo" do
  it "Task cannot be an empty string" do
    expect{new_task = Todo.new("")}.to raise_error "Task cannot be an empty string!!!"
  end
  it "Store tasks as a string" do
    new_task = Todo.new("Clean my shoes")
    expect(new_task.task).to eq "Clean my shoes"
  end
  it "The task is done" do
    new_task = Todo.new("Clean my shoes")
    new_task.mark_done!
    expect(new_task.done?).to eq true
  end
  it "The task is not done" do
    new_task = Todo.new("Clean my shoes")
    expect(new_task.done?).to eq false
  end

  context "If a task is already marked as done" do
    it "raises an error" do
      newer_task = Todo.new("Go to bed")
      newer_task.mark_done!
      expect{ newer_task.mark_done! }.to raise_error "This task is already done!!!"
    end
  end
end