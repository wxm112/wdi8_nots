class DNA 
  attr_reader :strand

  def initialize (strand)
    @strand = strand
  end


  def hamming_distance(anther_strand)
    array = @strand.chars
    anther_array = anther_strand.chars
    result = (array.each_with_index.map {|l,i| l != anther_array[i] ? 1 : nil}).compact
    if array.length > anther_array.length
      result.length - array.length + anther_array.length 
    else
      result.length
    end
  end

end