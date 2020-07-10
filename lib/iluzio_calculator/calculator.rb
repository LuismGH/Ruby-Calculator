module IluzioCalculator
  class Calculator
    private
    
    def operandControl(*x)
      x.each { |number| raise OperandError unless number.is_a? Numeric}
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

    def mod(x, y)
      operandControl(x, y)
      return x % y
    end

    #######################################
    # COMPLEX OPERATIONS
    #######################################

    def pow(x, y)
      operandControl(x, y)
      return x ** y
    end

    def sqrt(x)
      operandControl(x)
      return Math.sqrt(x)
    end
  end
end