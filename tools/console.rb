require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Airbnb Instances

big_house = Listing.new("Houston")
small_house = Listing.new("Houston")
shit_house = Listing.new("Dallas")
cool_house = Listing.new("Austin")

roy = Guest.new("Roy")
bob = Guest.new("Bob")
john = Guest.new("John")
charley = Guest.new("Charley")

biniss = Trip.new("Business",small_house,roy)
vacay = Trip.new("Vacation",cool_house,roy)
college = Trip.new("College",cool_house,charley)
trash = Trip.new("Trash",shit_house,john)
rich = Trip.new("Rich", big_house, bob)



binding.pry
puts "Done"