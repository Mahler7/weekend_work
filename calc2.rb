# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def self.add(first_number, second_number)
    first_number + second_number
  end

  def self.subtract(first_number, second_number)
    first_number - second_number
  end

  def self.multiply(first_number, second_number)
    first_number * second_number
  end

  def self.divide(first_number, second_number)
    first_number / second_number
  end

  module FancyCalculator

    def self.square_root(number)
      Math.sqrt(number)
    end

  end

end



# Copy your driver code from the previous exercise below:

calc = SimpleCalculator


puts "Simple Calculator Addition Test"
puts
if calc.add(1, 2) == 3
  puts "PASS"
else
  puts "F"
end

puts "Simple Calculator Subtraction Test"
puts
if calc.subtract(5, 2) == 3
  puts "PASS"
else
  puts "F"
end

puts "Simple Calculator Multiplication Test"
puts
if calc.multiply(3, 2) == 6
  puts "PASS"
else
  puts "F"
end

puts "Simple Calculator Division Test"
puts
if calc.divide(4, 2) == 2
  puts "PASS"
else
  puts "F"
end

puts "Fancy fcalculator Square Root Test"
puts
if calc::FancyCalculator.square_root(9) == 3
  puts "PASS"
else
  puts "F"
end

puts "Fancy Calculator Addition Test"
puts
if calc.add(1, 2) == 3
  puts "PASS"
else
  puts "F"
end

puts "Fancy Calculator Subtraction Test"
puts
if calc.subtract(5, 2) == 3
  puts "PASS"
else
  puts "F"
end

puts "Fancy Calculator Multiplication Test"
puts
if calc.multiply(3, 2) == 6
  puts "PASS"
else
  puts "F"
end

puts "Fancy Calculator Division Test"
puts
if calc.divide(4, 2) == 2
  puts "PASS"
else
  puts "F"
end

