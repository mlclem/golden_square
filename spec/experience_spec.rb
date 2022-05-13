require "experience"

RSpec.describe Experience do
    context "If an empty title is past in" do
        it "It raises an error" do
            expect {blank_title = Experience.new("", "some contents")}.to raise_error "Title cannot be empty"
        end
    end

    context "If contents is empty" do
        it "It raises an error" do
            expect {blank_contents = Experience.new("Title", "")}.to raise_error "Contents cannot be empty"
        end
    end
end