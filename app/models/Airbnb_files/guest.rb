class Guest
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def listings
        self.trips.map do |each_trip|
            each_trip.listing
        end
    end

    def trips
        Trip.all.select do |each_trip|
            each_trip.guest == self
        end
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveller
        pro_traveller = []
        self.all.each do |each_guest|
            if each_guest.trip_count > 1
                pro_traveller << each_guest
            end
        end
       pro_traveller
    end

    def self.find_all_by_name(desired_name)
        self.all.select do |each_guest|
            each_guest.name == desired_name
        end
    end
end