class Location
    attr_reader :address
    
    @@all = []
    def self.all
        @@all
    end
    
    def initialize(address)
        @address = address
        self.class.all << self
    end

    def usages
        Usage.all.select do |each_usage|
            each_usage.location == self
        end
    end

    def trainers
        self.usages.map do |each_usage|
            each_usage.trainer
        end
    end

    def clients
        clients = []
        trainers.each do |each_trainer|
            clients << each_trainer.clients
        end
        clients.flatten
    end

    def self.least_clients
        least_clients = nil
        highest_client_count = self.all[0].clients.count
        tied_locations = []
        self.all.each do |each_location|
            if highest_client_count == each_location.clients.count
                tied_locations << each_location
            elsif highest_client_count > each_location.clients.count
                least_clients = each_location
                highest_client_count = each_location.clients.count
                tied_locations.clear
                tied_locations << least_clients
            end
        end
        if tied_locations.count > 1
            return tied_locations.uniq
        else
            return least_clients
        end
    end

end