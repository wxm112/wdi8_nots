
require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

craigsy = Tenant.new 'Craigsy', 22, "male"
jonesy = Tenant.new 'Jonesy', 55, "male"

apt12 = Apartment.new 'Apartment 12', 200,1,9
converted_warehouse = Building.new '123 Fake St', 'Gothic Industrial', false, false, 1000
converted_warehouse.apartments['12'] = apt12
apt12.tenants << craigsy
apt12.tenants << jonesy


require 'pry'
binding.pry
