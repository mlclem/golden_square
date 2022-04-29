require 'greet'

RSpec.describe "greet method" do
  it "returns 'Hello, name' in a string" do
    result = greet("Bob")
    expect(result).to eq "Hello, Bob"
  end
end