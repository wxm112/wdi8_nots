

class Allergies
  attr_reader :score

  def initialize(score)
    @score = score
  end

  def list
    data = {'eggs' => 1, 'peanuts' => 2, 'shellfish' => 4, 'strawberries' => 8, 'tomatoes' => 16,'chocolate' => 32, 'pollen' => 64, 'cats' => 128}
    binary = ("%b" % score).chars
    if binary.length > 8
      binary = binary[-8..-1]
    end
    index = binary.each_index.select {|i| binary[i] == "1"}
    if index.empty?
      index
    else
      list = []
      index.select do |i|
      array = data.keys.slice(0, binary.length).reverse
      list << array[i]
      end 
      list.reverse
    end  
  end

  def allergic_to?(item)
    self.list.include?(item)
  end
end


