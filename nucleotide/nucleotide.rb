class DNA
  attr_accessor :string;

def initialize (string)
  @string = string
  @array = ['A','T','C','G','U']
end

def count(letter)
  if @array.include?(letter)
    @string.count(letter) 
  else
    raise ArgumentError.new("That's not a nucleotie, silly!")
  end
end

def nucleotide_counts
 hash = {}
 @array.each {|a| hash[a]=count(a)}
 hash
end

end