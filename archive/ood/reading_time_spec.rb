require 'reading_time'

RSpec.describe "reading_time method" do
  it "returns 1" do
    expect(reading_time(150)).to eq 1
  end

  it "returns 1" do
    expect(reading_time(200)).to eq 1
  end

  it "returns 2" do
    expect(reading_time(300)).to eq 2
  end

  it "fails if we pass in a negative" do
    expect { reading_time(-450) }.to raise_error "Number needs to be positive"
  end

  it "fails is we pass in something thats not an integer" do
    expect { reading_time("string") }.to raise_error "That's not an integer"
  end
end
