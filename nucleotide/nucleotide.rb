class DNA

  def initialize (string)
    @string = string
  end

  def count(letter)
    if "ATCGU".include?(letter)
      @string.count(letter)
    else
      raise ArgumentError.new("That's not a nucleotie, silly!")
    end
  end

  def nucleotide_counts
    hash = {}
    "ATCGU".chars.each {|a| hash[a]=count(a)}
    hash
  end

end
