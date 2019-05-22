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

# roy = User.new("Roy")
# bob = User.new("Bob")
# john = User.new("John")
# charley = User.new("Charley")

# big_house = Project.new(roy,"Big",1000)
# small_house = Project.new(roy,"Small",300)
# shit_house = Project.new(john,"Shit",50)
# cool_house = Project.new(charley,"Cool",700)

# pledge1 = big_house.new_pledge(bob,2000)
# pledge2 = small_house.new_pledge(charley,200)
# pledge3 = cool_house.new_pledge(roy,100)
# pledge4 = cool_house.new_pledge(bob,1000)
# pledge5 = small_house.new_pledge(bob,100)

client1 = Client.new("Client1")
client2 = Client.new("Client2")
client3 = Client.new("Client3")
client4 = Client.new("Client4")

trainer1 = Trainer.new("Trainer1")
trainer2 = Trainer.new("Trainer2")
trainer3 = Trainer.new("Trainer3")

client1.assign_trainer(trainer1)
client2.assign_trainer(trainer1)
client3.assign_trainer(trainer2)
client4.assign_trainer(trainer3)

location1 = Location.new("Place1")
location2 = Location.new("Place2")
location3 = Location.new("Place3")


usage1 = Usage.new(trainer1,location1)
usage2 = Usage.new(trainer1,location2)
usage3 = Usage.new(trainer2,location1)
usage4 = Usage.new(trainer3,location3)

#Location.least_clients
binding.pry
puts "Done"