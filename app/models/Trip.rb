class Trip
    attr_reader :listing, :guest

    @@all= []

    def initialize(guest, listing)
        @listing = listing
        @guest = guest
        @@all << self
    end

   def self.all
    @@all
   end

   def listing
    Trip.all.select do |trips_obj|
        trips_obj.listing


end  
