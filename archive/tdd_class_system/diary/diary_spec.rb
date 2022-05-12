require 'diary'

RSpec.describe Diary do 
  it "creates a new diary object" do
    new_diary = Diary.new
    expect(new_diary).to eq new_diary
  end

  

end