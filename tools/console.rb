require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Pry.start
kurt = Actor.new("Kurt Russel")
lina_headey = Actor.new("Lina Headey")
will_smith = Actor.new("Will Smith")
jeff_goldblum = Actor.new("Jeff Goldblum")
bill_pullman = Actor.new("Bill Pullman")
independence_day_tv = Show.new("Independence Day")
full_house = Show.new("Full House")
got = Show.new("GoT")
bone_tomahawk_tv = Show.new("Bone Tomahawk")
independence_day = Movie.new("Independence Day")
dr_doolittle = Movie.new("Dr. Doolittle")
bone_tomahawk = Movie.new("Bone Tomahawk")
cersei = Character.new("Cersei", lina_headey, got)
cowboy = Character.new("Cowboy", kurt, bone_tomahawk)
fighter_pilot = Character.new("fighter pilot", will_smith, independence_day)
fighter_pilot_two = Character.new("fighter pilot", jeff_goldblum, independence_day)
indian = Character.new("indian", bill_pullman, bone_tomahawk_tv)


p bill_pullman
binding.pry
p "HELLO"

# bob = Guest.new("Bob")
# john = Guest.new("John")
# sarah = Guest.new("Sarah")
# chicago = Listing.new("Chicago")
# houston = Listing.new("Houston")
# trip_one = Trip.new(guest: bob, listing: chicago)
# trip_two = Trip.new(guest: john, listing: chicago)
# trip_three = Trip.new(guest:bob, listing: houston)
# trip_four = Trip.new(guest:john, listing: houston)
# trip_five = Trip.new(guest:sarah, listing: houston)
# #p Listing.most_popular
