# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

  def square_root(number)
    Math.sqrt(number)
  end

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

calc = SimpleCalculator.new
fcalc = FancyCalculator.new

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
if fcalc.square_root(9) == 3
  puts "PASS"
else
  puts "F"
end

puts "Fancy Calculator Addition Test"
puts
if fcalc.add(1, 2) == 3
  puts "PASS"
else
  puts "F"
end

puts "Fancy Calculator Subtraction Test"
puts
if fcalc.subtract(5, 2) == 3
  puts "PASS"
else
  puts "F"
end

puts "Fancy Calculator Multiplication Test"
puts
if fcalc.multiply(3, 2) == 6
  puts "PASS"
else
  puts "F"
end

puts "Fancy Calculator Division Test"
puts
if fcalc.divide(4, 2) == 2
  puts "PASS"
else
  puts "F"
end

