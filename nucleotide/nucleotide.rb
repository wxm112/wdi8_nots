class DNA

  def initialize (string)
    @string = string
  end

  def count(letter)
    "ATCGU".include?(letter) ? (@string.count(letter)) : (raise ArgumentError.new("That's not a nucleotie, silly!"))
  end

  def nucleotide_counts
    hash = {}
    "ATCGU".chars.each {|a| hash[a]=count(a)}
    hash
  end

end
