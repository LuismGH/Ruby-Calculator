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

      operand1 = line.to_i; line = line.gsub(operand1.to_s, "")
      operator = line[0]; line = line.gsub(operator, "")
      operand2 = line.to_i; line = line.gsub(operand2.to_s, "")

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
      return @Answer
    end
  end
end