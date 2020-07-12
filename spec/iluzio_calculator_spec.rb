RSpec.describe IluzioCalculator do
  it "has a version number" do
    expect(IluzioCalculator::VERSION).not_to be nil
  end

  it "has a calculator class" do
    expect(IluzioCalculator::Calculator).not_to be nil
  end

  it "has a CUI class" do
    expect(IluzioCalculator::CUI).not_to be nil
  end

  it "has a error class" do
    expect(IluzioCalculator::Error).not_to be nil
  end

  it "has a operand error class" do
    expect(IluzioCalculator::OperandError).not_to be nil
  end

  it "has a operand numeric error class" do
    expect(IluzioCalculator::OperandNumericError).not_to be nil
  end

  it "has a root negative error class" do
    expect(IluzioCalculator::RootNegativeError).not_to be nil
  end

  before IluzioCalculator::Calculator do
    @calculator = IluzioCalculator::Calculator.new
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
        expect {
          @calculator.divide(8, 0)
        }.to raise_error(ZeroDivisionError)
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
        expect {
          @calculator.sqrt(-9)
        }.to raise_error(IluzioCalculator::RootNegativeError)
      end

      it "calculates cube roots correctly" do
        expect(@calculator.cbrt(8)).to eq(2)
      end

      it "calculates nth roots correctly" do
        expect(@calculator.nthroot(16, 4)).to eq(2)
        expect(@calculator.nthroot(243, 5)).to eq(3)
        expect {
          @calculator.nthroot(-100, 8)
        }.to raise_error(IluzioCalculator::RootNegativeError)
      end

      it "calculates logarithms correctly" do
        expect(@calculator.log(25, 5)).to eq(2)
        expect(@calculator.log(100.0, 10.0)).to eq(2)
      end
    end
  end

  before IluzioCalculator::CUI do
    @interface = IluzioCalculator::CUI.new
  end

  describe IluzioCalculator::CUI do
    it "has a calculator" do
      expect(@interface.calculator).not_to be nil
    end

    it "can make simple operations" do
      expect(@interface.calculate("3.1 + 5")).to eq(8.1)
      expect(@interface.calculate("3 / 5")).to eq(0)
      expect(@interface.calculate("3 % 5")).to eq(3)
    end

    it "can make operations of several operands (without precedence)" do
      expect(@interface.calculate("3 % 5 + 12")).to eq(15)
      expect(@interface.calculate("3 % 5 + 12 - 2 * 10")).to eq(130)
    end
  end
end
