class Guest
    @@all = []
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def listings
        ar_trip =  Trip.all.select do |trip_obj|
            trip_obj.guest == self
            end
            ar_trip.map do | trip_obj |
                trip_obj.listing
            end
            
    end

    def trips
        Trip.all.select do |trip_obj|
            trip_obj.guest == self
    end
    end

    def trip_count
        self.trips.length
    end




end