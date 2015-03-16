# class SumOfMultiples
#   def initialize(d1, d2, d3)
#     @d1 = d1
#     @d2 = d2
#     @d3 = d3
#   end

#   def self.to(n)
#     array = (0...n).select {|n| n % 3 == 0 || n % 5 == 0}
#     array.inject(:+)
#   end

#   def to(n)
#     array = (0...n).select {|n| n % @d1 == 0 || n % @d2 == 0 || n % @d3 ==0}
#     array.inject(:+)
#   end


# end


class SumOfMultiples
  def self.to(n)
    new(3,5).to(n)
  end

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(n)
    selected = (1...n)
      .select { |n| multiples?(n)}
      .reduce(0, :+)
  end

  def multiples?(n)
    @multiples.any? {|multiple| n % multiple == 0}
  end

end