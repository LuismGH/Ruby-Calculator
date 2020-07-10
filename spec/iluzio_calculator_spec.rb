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

      it "calculates modulo correctly" do
        expect(@calculator.mod(3, 5)).to eq(3)
      end
    end

    context "Complex Operations" do
      it "powers correctly" do
        expect(@calculator.pow(3, 5)).to eq(243)
      end

      it "calculates square roots correctly" do
        expect(@calculator.sqrt(9)).to eq(3)
      end

      it "calculates cube roots correctly" do
        expect(@calculator.cbrt(8)).to eq(2)
      end

      it "calculates nth roots correctly" do
        expect(@calculator.nthroot(16, 4)).to eq(2)
      end

      it "calculates logarithms correctly" do
        expect(@calculator.log(25, 5)).to eq(2)
      end
    end
  end
end
