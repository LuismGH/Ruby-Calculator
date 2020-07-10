require "iluzio_calculator/version"
require "iluzio_calculator/calculator"

module IluzioCalculator
  class Error < StandardError
    def initialize(message = "Calculator Error")
      super(message)
    end
  end

  class OperandError < Error; end

  class OperandNumericError < OperandError
    def initialize()
      super("Operands are not numeric")
    end
  end

  class RootNegativeError < OperandError
    def initialize()
      super("Operands cannot be negative")
    end
  end
end
