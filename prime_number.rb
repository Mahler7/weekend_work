require 'rspec'

# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

class Prime

  def is_prime?(number)

    if number / number == 1 and number / 1 == number
      if number / 2 == 2
        false
      end
    true    
    end

  end

  # Second, implement the highest_prime_number_under method below. It should accept a number as
  # an argument and return the highest prime number under that number. For example, the 
  # highest prime number under 10 is 7.

  def highest_prime_number_under(number)

  end

end

RSpec.describe Prime do

  describe '#prime' do
    it 'should return 2 as a prime number' do
      number = Prime.new
      prime = number.is_prime?(2)
      expect(prime).to eq (true)
      end
    end
  

  describe '#prime' do
    it 'should return 3 as a prime number' do
      number = Prime.new
      prime = number.is_prime?(3)
      expect(prime).to eq (true)
      end
    end

  describe '#prime' do
    it 'should not return 4 as a prime number' do
      number = Prime.new
      prime = number.is_prime?(4)
      expect(prime).to eq (false)
      end
    end

  describe '#prime' do
    it 'should return 5 as a prime number' do
      number = Prime.new
      prime = number.is_prime?(5)
      expect(prime).to eq (true)
      end
    end

  end
 



