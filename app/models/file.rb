class Guest
  def self.all
    @@all
  end
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def listings
    trip_array = Trip.all.select {|obj| obj.guest == self}
    trip_array.map {|trip_obj| trip_obj.listing}
  end
  def trips
    trip_array = Trip.all.select {|obj| obj.guest == self}
  end
  def trip_count
    Trip.all.select {|obj| obj.guest == self}.length
  end
  def self.pro_traveller
    list_of_guests = Trip.all.select {|trip_obj| trip_obj.guest.trip_count > 1}   #selects array of trips where the guest.trip_count method return is greater than one
    list_of_guests.map {|obj| obj.guest.name}.uniq                                #takes truncated trip array and remaps as array of guest names.  uniq to remove
  end                                                                             #redundancy in array of returned names
  def self.find_all_by_name(name)
    self.all.select {|guest_obj| guest_obj.name.downcase == name.downcase}
  end
end

class Trip
  attr_accessor :guest, :listing
  @@all = []
  def initialize(guest:, listing:)
    @guest = guest
    @listing = listing
    @@all << self
  end
  def self.all
    @@all
  end
  def listing
    @listing  #instance variable for called instance
  end
  def guest
    @guest
  end
end

class Listing
  def self.most_popular
    self.all.max_by {|listings| listings.trip_count}  #takes the all array and compares each listing's trip_count. returns highest count
  end

  def self.find_all_by_city(city)
    city_trips = Trip.all.select do |obj|
      obj.listing.city == city
    end
    city_trips.map do |trip_obj|
      trip_obj.listing
    end
  end
  attr_reader :city
  @@all = []
  def initialize(city)
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end
  def guests
    guest_array = Trip.all.select do |obj|
      obj.listing == self
    end
    guest_array.map do |guest_obj|
      guest_obj.guest
    end
  end
  def trips
    Trip.all.select do |obj|
      obj.listing == self
    end
  end
  def trip_count
    trip_count = Trip.all.select {|obj| obj.listing == self}
    trip_count.length
  end
end
bob = Guest.new("Bob")
john = Guest.new("John")
sarah = Guest.new("Sarah")

chicago = Listing.new("Chicago")
houston = Listing.new("Houston")

trip_one = Trip.new(guest: bob, listing: chicago)
trip_two = Trip.new(guest: john, listing: chicago)
trip_three = Trip.new(guest:bob, listing: houston)
trip_four = Trip.new(guest:john, listing: houston)
trip_five = Trip.new(guest:sarah, listing: houston)
