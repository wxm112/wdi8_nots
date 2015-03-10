class Sieve

  def initialize(number)
    @number = number
  end

  def primes
    list = (2..@number).to_a
    primes = [ ]
    while list.empty? != true do 
      primes << list[0]
      list = list.select {|n| n % list[0] != 0}
    end
    primes
  end


  

  # private

  # def calculate_primes
  #   numbers = (2..limit).to_a
  #   primes = []
  #   begin
  #     target = numbers.shift
  #     primes << target  
  #     numbers.reject! do |i|
  #       i % target == 0
  #     end
  #   end until numbers.empty?
  #   primes
  # end

end