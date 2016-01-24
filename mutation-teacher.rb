# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

#reducing strings to unique characters
#check if the characters are the same then its a match and we can move on in both strings
  #when they are different return false

def mutation?(base_word, mutation)
  
  test_array = standardize(base_word)

  other_array.each do |test_letter|
    return false unless test_array.include?(test_letter)
  end
  true
end

def standardize(word)
  word.split("").uniq
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end