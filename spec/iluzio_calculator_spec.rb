RSpec.describe IluzioCalculator do
  it "has a version number" do
    expect(IluzioCalculator::VERSION).not_to be nil
  end

  it "has a calculator class" do
    expect(IluzioCalculator::Calculator).not_to be nil
  end

  before IluzioCalculator::Calculator do
    @calculator = IluzioCalculator::Calculator.new()
  end

  describe IluzioCalculator::Calculator do
    context "Basic Operations" do
      it "adds correctly" do
        expect(@calculator.add(3, 5)).to eq(8)
      end

      it "subtracts correctly" do
        expect(@calculator.subtract(3, 5)).to eq(-2)
      end

      it "multiplies correctly" do
        expect(@calculator.multiply(3, 5)).to eq(15)
      end

      it "divides correctly" do
        expect(@calculator.divide(3, 5)).to eq(0)
      end
    end
  end
end
