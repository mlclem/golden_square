require 'todo_list'

RSpec.describe TodoList do
  context "When creating no todos have been added" do
    it "report_todos returns nil" do
      new_todo_list = TodoList.new
      expect(new_todo_list.report_todos).to eq nil
    end
  end
=begin
  it "mark_done method raises an error" do
    new_todo_list = TodoList.new
    expect{ new_todo_list.mark_done(todo)}.to raise_error "There are no tasks to mark as complete"
  end
=end
end