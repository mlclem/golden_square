require "task"

RSpec.describe Task do
    context "When adding a new task" do
        it "String cannot be empty" do
            expect {task = Task.new("")}.to raise_error "string cannot be empty"

        end
    end

end
