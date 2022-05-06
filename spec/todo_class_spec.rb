require 'todo_class'

RSpec.describe Todo do
  it "Initializes with blank hash and can store todo objects" do
    may_todo = Todo.new
    may_todo.add_todo("Plant flowers")
    may_todo.add_todo("Clean house")
    expect(may_todo.report_todos).to eq ["Plant flowers", "Clean house"]
  end
end
