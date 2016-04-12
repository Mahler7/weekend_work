# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

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

