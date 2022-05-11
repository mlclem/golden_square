require 'todo_list'
require 'todo'

RSpec.describe "Integration tests" do
  context "A task can be added to the todo list" do
    it "returns a list of incompleted tasks" do
      new_todo = Todo.new("Go to the shops")
      new_todo_list = TodoList.new
      new_todo_list.add(new_todo)
      expect(new_todo_list.incomplete).to eq [new_todo]
    end

    it "returns a list of completed tasks" do
      new_todo = Todo.new("Go to the shops")
      new_todo_list = TodoList.new
      new_todo_list.add(new_todo)
      new_todo.mark_done!
      expect(new_todo_list.complete).to eq [new_todo]
    end
  end

  context "Multiple tasks can be added" do
    it "All incomplete tasks can be marked as" do
      first_todo = Todo.new("Learn all the languages")
      second_todo = Todo.new("Run all the tests")
      third_todo = Todo.new("Pet the cat")
      fourth_todo = Todo.new("Win the lottery")
      best_todo_list_ever = TodoList.new
      best_todo_list_ever.add(first_todo)
      best_todo_list_ever.add(second_todo)
      best_todo_list_ever.add(third_todo)
      best_todo_list_ever.add(fourth_todo)
      second_todo.mark_done!
      fourth_todo.mark_done!
      best_todo_list_ever.give_up!
      expect(best_todo_list_ever.incomplete).to eq []
    end
    it "All completed tasks can be marked as" do
      first_todo = Todo.new("Learn all the languages")
      second_todo = Todo.new("Run all the tests")
      third_todo = Todo.new("Pet the cat")
      fourth_todo = Todo.new("Win the lottery")
      best_todo_list_ever = TodoList.new
      best_todo_list_ever.add(first_todo)
      best_todo_list_ever.add(second_todo)
      best_todo_list_ever.add(third_todo)
      best_todo_list_ever.add(fourth_todo)
      second_todo.mark_done!
      fourth_todo.mark_done!
      best_todo_list_ever.give_up!
      expect(best_todo_list_ever.complete).to eq [first_todo, second_todo, third_todo, fourth_todo]
    end
  end
end