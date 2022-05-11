require 'todo_list'

RSpec.describe "todo list" do
  it "when we crate a new instance it returns an empty array list" do
    new_list = TodoList.new
    expect{new_list.incomplete}.to raise_error "There are no Todos!!!"
  end
  it "when we crate a new instance it returns an empty array list" do
    new_list = TodoList.new
    expect{new_list.complete}.to raise_error "There are no Todos!!!"
  end

end