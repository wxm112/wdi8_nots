class Building
	attr_accessor :address, :style, :has_doorman, :has_elevator, :num_floors, :apartments
	@@all_building = []
	def initialize(address,style,has_doorman,has_elevator,num_floors)
		@address = address
		@style = style
		@has_doorman = has_doorman
		@has_elevator = has_elevator
		@num_floors = num_floors
		@apartments = {}
		@@all_building << self
	end

	def self.all_building
		@@all_building
	end
	
	def to_s
		"The #{@style} building at #{@address} has #{@apartments.count} apartments."
	end
end