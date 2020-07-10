module IluzioCalculator
  class Calculator
    private
    
    def operandControl(x, y)
      return raise OperandError unless x.is_a? Numeric and y.is_a? Numeric
    end

    public

    #######################################
    # BASIC OPERATIONS
    #######################################

    def add(x, y)
      operandControl(x, y)
      return x + y
    end

    def subtract(x, y)
      operandControl(x, y)
      return x - y
    end

    def multiply(x, y)
      operandControl(x, y)
      return x * y
    end

    def divide(x, y)
      operandControl(x, y)
      return x / y
    end
  end
end