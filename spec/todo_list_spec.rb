require "todo_list"

RSpec.describe TodoList do
    context "If there are no tasks" do
        it "Reports todos returns nil" do
        new_list = TodoList.new
        expect(new_list.report_todos).to eq nil
        end

    

    end

end