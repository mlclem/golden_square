require 'counter'

RSpec.describe Counter do
  it "counter adds num  to counter & reports correctly" do
    counter = Counter.new
    counter.add(5)
    result = counter.report()
    expect(result).to eq "Counted to 5 so far."
  end
  

  it "count is initialized at 0" do
    counter = Counter.new
    result = counter.report()
    expect(result).to eq "Counted to 0 so far."
  end

  context "Given multiple nums are added" do
    it "counter adds multiple nums corectly" do
      counter = Counter.new
      counter.add(5)
      counter.add(11)
      counter.add(2)
      result = counter.report()
      expect(result).to eq "Counted to 18 so far."
    end
  end
end