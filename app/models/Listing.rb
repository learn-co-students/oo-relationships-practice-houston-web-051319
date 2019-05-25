class Listing
    @@all = []
    attr_accessor :city 
    
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
      ar_trips = Trip.all.select do |trip_obj|
        trip_obj.listing == self
        end
        ar_trips.map do | trip_obj |
            trip_obj.guest
        end
    end

    def trips
        ar_trips = Trip.all.select do |trip_obj|
            trip_obj.listing == self
        end
           ar_trips
    end

    def trip_count
        self.trips.length
    end

    


end
