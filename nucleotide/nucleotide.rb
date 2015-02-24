class DNA

  def initialize (string)
    @string = string
  end

  def count(letter)
    "ATCGU".chars.include?(letter) ? (@string.count(letter)) : (raise ArgumentError.new("That's not a nucleotie, silly!"))
  end

  def nucleotide_counts
    array = "ATCGU".chars
    Hash[array.map {|n| [n, count(n)]}]
  end

end
