# Create a Tree class with a rings attribute and getter method.
# Trees create a ring for every winter that passes
# It should have a bear_fruit? method which should return true if the tree has fruit that year. the tree produces fruit when it has more than 7 rings but less than 15, but false otherwise.
# The class should also have an winter_season method that increases the rings attribute by 1.
# Hint: remember that with object oriented programming the object holds values in the attributes to describe it's current state. Even when we aren't reading it's attributes, they should be up to date.


# Driver code - don't touch anything below this line.

class Tree

  def initialize
    @rings = rings
    @bear_fruit = 0
  end

  def rings
    @rings = 0
  end

  def bear_fruit?
    if @rings > 7 and @rings < 15
      @bear_fruit = @bear_fruit + 1
      return true
    else
      return false
    end
  end

  def winter_season
    @rings = @rings + 1
  end

end

puts "TESTING the Tree class..."
puts

tree = Tree.new

result = tree.rings

puts "rings returned:"
puts result
puts

if result == 0
  puts "PASS!"
else
  puts "F"
end
puts

result = tree.bear_fruit?

puts "bear_fruit? before the first winter:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
puts

8.times do
  tree.winter_season
end

result = tree.bear_fruit?

puts "bear_fruit? after 8 winters:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

7.times do
  tree.winter_season
end

result = tree.bear_fruit?

puts "bear_fruit? after 15 winters:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end