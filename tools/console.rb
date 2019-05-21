require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Airbnb Instances

# big_house = Listing.new("Houston")
# small_house = Listing.new("Houston")
# shit_house = Listing.new("Dallas")
# cool_house = Listing.new("Austin")

# roy = Guest.new("Roy")
# bob = Guest.new("Bob")
# john = Guest.new("John")
# charley = Guest.new("Charley")

# biniss = Trip.new("Business",small_house,roy)
# vacay = Trip.new("Vacation",cool_house,roy)
# college = Trip.new("College",cool_house,charley)
# trash = Trip.new("Trash",shit_house,john)
# rich = Trip.new("Rich", big_house, bob)

#Crowdfunding Instances

roy = User.new("Roy")
bob = User.new("Bob")
john = User.new("John")
charley = User.new("Charley")

big_house = Project.new(roy,"Big",1000)
small_house = Project.new(roy,"Small",300)
shit_house = Project.new(john,"Shit",50)
cool_house = Project.new(charley,"Cool",700)

pledge1 = big_house.new_pledge(bob,2000)
pledge2 = small_house.new_pledge(charley,200)
pledge3 = cool_house.new_pledge(roy,100)
pledge4 = cool_house.new_pledge(bob,1000)
pledge5 = small_house.new_pledge(bob,100)


#Project.most_backers
binding.pry

puts "Done"