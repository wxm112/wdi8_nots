class Apartment
  attr_accessor :name, :price, :sqft, :num_bathrooms, :num_bedrooms, :tenants
  
  def initialize(name,sqft, num_bathrooms, num_bedrooms)
  	@price = 0
  	@name = name
  	@sqft = sqft
  	@num_bathrooms = num_bathrooms
  	@num_bedrooms = num_bedrooms
  	@tenants = []
  end

  def occupied?
  	@tenants.any?
  end

  def to_s
  	"Apartment #{@name} is #{@sqft} square feet with #{@tenants.count} tenants."
  end

end
