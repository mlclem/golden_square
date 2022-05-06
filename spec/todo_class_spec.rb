require 'todo_class.rb'

RSpec.describe Todo do
  it "Initializes with a hash can add todos and report a list of todos" do
      march_todo= Todo.new
      march_todo.add_todo("Go buy a single carrot")
      march_todo.add_todo("Get tortoise out of shed")
      expect(march_todo.report_todos).to eq ["Go buy a single carrot","Get tortoise out of shed"]
  end

  context "A todo object can have it's status updated" do
    it "it removed from the todo list" do
      april_todo = Todo.new
      april_todo.add_todo("Go buy all the toilet paper")
      april_todo.add_todo("Stock up on Easter chocolate")
      april_todo.change_status("Stock up on Easter chocolate")
      expect(april_todo.report_todos).to eq ["Go buy all the toilet paper"]
    end
  end

end




