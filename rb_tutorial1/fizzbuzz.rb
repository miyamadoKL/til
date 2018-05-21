# FizzBuzz function (no offenses detected by rubocop)
class TestClass
  def initialize(arg)
    puts arg
  end

  def fizz_buzz(input_val)
    if (input_val % 15).zero?
      p 'FizzBuzz'
    elsif (input_val % 3).zero?
      p 'Fizz'
    elsif (input_val % 5).zero?
      p 'Buzz'
    else
      p input_val
    end
  end
end

class1 = TestClass.new('Begin FizzBuzz function.')

(1..100).each { |elem| class1.fizz_buzz(elem) }
