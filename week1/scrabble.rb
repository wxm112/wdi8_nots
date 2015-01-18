class Scrabble
  attr_accessor :word
  def initialize(word)
    @word = word
  end


  def score
  	number = 0
  	l_to_n = {'c'=> 3, 'a' => 1, 'b' => 3, 'g' => 2, 'e' => 1}
    letters = @word.split(//)
    letters.each {|i| number +=l_to_n[i].to_i}
	puts "The score is #{number}."
  end

end

p cal = Scrabble.new("cabbage")
p cal.score


require "pry"

binding.pry
