class Listing
    attr_reader :city
    @@all = []

    def initialize(city)
        @city = city
        self.class.all << self
    end

    def self.all
        @@all
    end

    def guests
        self.trips.map do |each_trip|
            each_trip.guest
        end
    end

    def trips
        Trip.all.select do |each_trip|
            each_trip.listing == self
        end
    end

    def trip_count
        self.trips.count
    end

    def self.most_popular
        most_popular_listing = nil
        highest_trip_count = 0
        Listing.all.each do |each_listing|
            if each_listing.trip_count > highest_trip_count
                most_popular_listing = each_listing
                highest_trip_count = each_listing.trip_count
            end
        end
        most_popular_listing
    end

    def self.find_all_by_city(desired_city)
        self.all.select do |each_listing|
            each_listing.city == desired_city
        end
    end

end