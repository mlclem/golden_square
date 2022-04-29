require 'report_length'

RSpec.describe "report_length method" do
  it "returns the length of a string" do
  result = report_length("long")
  expect(result).to eq "This string was 4 characters long."
  end
end

RSpec.describe "report_length method" do
  it "counts spaces & new line as chars" do
  result = report_length("new new new\n")
  expect(result).to eq "This string was 12 characters long."
  end
end