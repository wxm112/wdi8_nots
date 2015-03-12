require 'pry'

class PrimeFactors

  def self.for(num, factors=[])
    array = (2..num).to_a
    array.empty? ? (return factors) : (factor1 = array.detect{|n| num % n == 0})
    factors << factor1
    factor2 = num/factor1
    if factor2 == 1
      return factors
    else
      self.is_prime?(factor2) ? (factors << factor2) : self.for(factor2, factors)
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
