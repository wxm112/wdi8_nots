class DNA 
  attr_reader :strand

  def initialize (strand)
    @strand = strand
  end

  def diff(anther_strand)
    result = []
    @strand.chars.each_index do |i|
      unless @strand.chars[i] == anther_strand.chars[i]
        result << i
      end
    end
    result
  end

  def hamming_distance(anther_strand)
    result = diff(anther_strand)
    if @strand.chars.length > anther_strand.chars.length
      result.length - @strand.chars.length + anther_strand.chars.length 
    else
      result.length
    end
  end

end