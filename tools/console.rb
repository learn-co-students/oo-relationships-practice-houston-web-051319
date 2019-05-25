require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

seattle = Listing.new('Seattle')
houston = Listing.new('Houston')
austin = Listing.new('Austin')
dallas = Listing.new('Dallas')

stefan = Guest.new('Stefan')
joe = Guest.new('Joe')
megan = Guest.new('Megan')
nenad = Guest.new('Nenad')

trip1 = Trip.new(stefan, seattle)
trip2 = Trip.new(joe, houston)
trip3 = Trip.new(megan, austin)
trip4 = Trip.new(nenad, dallas)
trip5 = Trip.new(stefan, houston)
trip6 = Trip.new(joe, austin)
trip7 = Trip.new(megan, dallas)
trip8 = Trip.new(nenad, seattle)

 
Pry.start
0
