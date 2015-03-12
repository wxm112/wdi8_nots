require 'pry'

class PrimeFactors

  def self.for(num)
    array = (2..num).to_a
    factors = []
    return factors if num == 1 
    array.each do |n|
      if num % n == 0
        factors << n  
        self.for(num/n)
      end
    end
    factors
  end

  def self.is_prime?(num)
    (2...num).each do |divisor|
      return false if num % divisor == 0
    end

    true
  end

end

p PrimeFactors.for(4)


# class PrimeFactors

#   def self.for(num)
#     retun [] if number == 1
#     factors = []
#     divisor = 2
#     while number > 1
#       while number % divisor == 0 
#         number /= divisor
#         factors << divisor
#       end
#       divisor += 1
#     end
#     factors
#   end

# end