class Client
  attr_accessor :name, :num_children, :age, :num_pets

  def initialize (name, num_children, age, num_pets)
    @name = name
    @num_children = num_children
    @num_pets = num_pets
  end

  def to_s
  	puts "=" * 80
    puts "The client #{@name} is #{@age} years old, and has #{@num_children} children, #{@num_pets} pets."
  end
end


may= Client.new("May Wang", 0, 32, 0)
may.to_s
