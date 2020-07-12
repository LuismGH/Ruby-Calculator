module IluzioCalculator
  class CUI
    attr_reader :calculator, :Answer

    def initialize()
      @calculator = Calculator.new
    end

    def menu()
      input = String.new
      while input != "exit"
        print "Enter an operation: "
        input = STDIN.gets.chomp
        if input != "exit"
          puts "Answer: " + calculate(input)
        end
      end
    end

    def calculate(line)
      # Delete all whitespaces
      line = line.delete(" ")

      if line.to_f % 1 != 0
        operand1 = line.to_f
      else
        operand1 = line.to_i
      end
      line = line.gsub(/\A(\+|\-)?(\d+(\.\d+)?)/, "")

      operator = line.scan(/\A(\D+)/).join(""); line = line.gsub(operator, "")

      if line.to_f % 1 != 0
        operand2 = line.to_f
      else
        operand2 = line.to_i
      end
      line = line.gsub(/\A(\+|\-)?(\d+(\.\d+)?)/, "")

      case operator
      when "+"
        @Answer = @calculator.add(operand1, operand2)
      when "-"
        @Answer = @calculator.subtract(operand1, operand2)
      when "*"
        @Answer = @calculator.multiply(operand1, operand2)
      when "/"
        @Answer = @calculator.divide(operand1, operand2)
      when "%"
        @Answer = @calculator.mod(operand1, operand2)
      when "^"
        @Answer = @calculator.pow(operand1, operand2)
      else
        puts "Unknown operation"
      end

      # Store most nested parenthesis
      #parenthesis = line.scan(/\([^()]*\)/).collect { |x| x.gsub(/^\(|\)$/, "") }
      #parenthesis.each { 
      #  |x| x.scan(/(\D|\A)(\-|\+)(\d+)/).each {
      #    |y| y = y.shift
      #  }
      #}
      if !line.empty?
        line = @Answer.to_s + line
        return calculate(line)
      else
        return @Answer
      end
    end
  end
end