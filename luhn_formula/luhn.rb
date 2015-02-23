class Luhn
  attr_accessor :number

  def initialize (number)
    @number = number
  end

  def self.create(number)
    test_number = number * 10
    luhn = Luhn.new test_number
    return test_number if luhn.valid?
    test_number + 10 - (luhn.checksum % 10)
  end

  # def array
  #   @number.to_s.split('').map{|d| d.to_i}
  # end

  def check_digit
    @number % 10
  end

  # def digit_cal(digit)
  #   digit*2 > 10 ? digit*2 - 9 : digit * 2
  # end

  # def addends
  #   if array.length.even?
  #     array.each_index.map {|i| i.even? ? digit_cal(array[i]) : array[i]}
  #   else
  #     array.each_index.map {|i| i.odd? ? digit_cal(array[i]) : array[i]}
  #   end
  # end

  def addends
    @number.to_s.reverse.chars.map.each_with_index do |digit, i|
      digit = digit.to_i
      digit = digit * 2 unless (i % 2 == 0)
      digit = digit - 9 if digit >= 10
      digit
    end.reverse
  end
       
  def checksum
    addends.reduce(:+)
  end  

  def valid?
    checksum % 10 == 0
  end

end
