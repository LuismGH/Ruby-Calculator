module IluzioCalculator
  class Error < StandardError
    def initialize(message = "Calculator Error")
      super(message)
    end
  end

  class OperandError < Error
    def initialize()
      super("Operands are not numeric")
    end
  end
end