require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns correct if input == horse" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
end

RSpec.describe "check_codeword method" do
  it "returns close if first & last char == h && e" do
    result = check_codeword("hope")
    expect(result).to eq "Close, but nope."
  end
end

RSpec.describe "check_codeword method" do
  it "returns wrong if something else" do
    result = check_codeword("mouse")
    expect(result).to eq "WRONG!"
  end
end