module IluzioCalculator
  class Calculator
    private
    
    def operandControl(*x)
      x.each { |number| raise OperandNumericError unless number.is_a? Numeric}
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
      raise ZeroDivisionError unless y != 0
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
      raise RootNegativeError unless x >= 0
      return Math.sqrt(x)
    end

    def cbrt(x)
      operandControl(x)
      return Math.cbrt(x)
    end

    def nthroot(x, y)
      operandControl(x, y)
      raise RootNegativeError unless x >= 0 || y % 2 != 0
      return (x ** (y ** -1))
    end

    def log(x, y)
      operandControl(x, y)
      return Math.log(x, y)
    end
  end
end