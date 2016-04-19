require "docking_station.rb"

describe DockingStation do
  subject(:station) {described_class.new}
  let(:bike) { double(:bike)}

  describe '#initialize' do

    it 'has an empty array in which to store docked bikes' do
      expect(station.bikes).to eq Array.new
    end
  end

  describe '#dock' do
    it "can store bikes" do
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end
  end

  describe '#release' do

    it "can release bikes" do
      station.dock(bike)
      station.release(bike)
      expect(station.bikes).to_not include(bike)
    end
  end
end
