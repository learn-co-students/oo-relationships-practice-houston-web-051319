class Trainer
    attr_reader :name
    
    @@all = []
    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def clients
        Client.all.select do |each_client|
            each_client.trainer == self
        end
    end

    def usages
        Usage.all.select do |each_usage|
            each_usage.trainer == self
        end
    end

    def locations
        self.usages.map do |each_usage|
            each_usage.location
        end
    end

    def self.most_clients
        most_clients = nil
        client_count = 0
        tied_trainers = []
        self.all.each do |each_trainer|
            if each_trainer.clients.count > client_count
                most_clients = each_trainer
                client_count = each_trainer.clients.count
                tied_trainers.clear
                tied_trainers << each_trainer
            elsif each_trainer.clients.count == client_count
                tied_trainers << each_trainer
            end
        end
        if tied_trainers.count > 1
            return tied_trainers
        else
            return most_clients
        end
    end

end