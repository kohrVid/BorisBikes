require "bike.rb"

describe Bike do
  let(:bike) { Bike.new }
  let(:station) {double :station}

  it "is has status" do
    expect(bike.status).to eq(:working)
  end



end
