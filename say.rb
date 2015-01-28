require "pry"
class Say
  attr_accessor :number

  UNITS ={
    0=> "zero", 
    1=> "one",
    2=> "two",
    3=> "three",
    4=> "four",
    5=> "five",
    6=> "six",
    7=> "seven",
    8=> "eight",
    9=> "nine"
  }
  TEENS ={
    11=> "eleven",
    12=> "twelve",
    13=> "thirteen",
    14=> "fourteen",
    15=> "fifteen",
    16=> "sixteen",
    17=> "seventeen",
    18=> "eighteen",
    19=> "nineteen"
  }
  TENS ={
    1=> "ten",
    2=> "twenty",
    3=> "thirty",
    4=> "forty",
    5=> "fifty",
    6=> "sixty",
    7=> "seventy",
    8=> "eighty",
    9=> "ninety"
  }

  

  def initialize(number)
    @number = number.to_s
  end

  def in_english
    if @number.to_i < 0 or @number.to_i > 99
      raise ArgumentError
    else
      if @number.length == 1
            puts UNITS[@number.to_i]
      elsif @number.length == 2
        if @number.chars[1] == "0"
          tens = @number.chars[0].to_i
          puts TENS[tens]
        else
          if @number.chars[0] == "1"
            puts TEENS[@number.to_i]
          else
            tens = @number.chars[0].to_i
            unit = @number.chars[1].to_i
            puts "#{TENS[tens]}-#{UNITS[unit]}"
          end
        end
      end
    end
  end
end




 
  p Say.new(0).in_english
  p Say.new(1).in_english
  p Say.new(14).in_english
  p Say.new(50).in_english
  p Say.new(98).in_english
  p Say.new(-1).in_english
  p Say.new(100).in_english


binding.pry







