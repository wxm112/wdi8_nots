class Animal
  attr_accessor :name, :age, :gender, :species, :toys
  def initialize(name, age, gender, species, toys)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = toys
  end

  def to_s
  	puts "=" * 80
    puts "#{@name} is #{species}, #{gender}, #{@age} years old and has #{@toys}. "
  end
end

piggy = Animal.new("Black", 4, "Femail", "pig", ["headphoen", "paddy"])
piggy.to_s
p piggy