class Usage
    attr_accessor :location, :trainer
    
    @@all = []
    def self.all
        @@all
    end

    def initialize(trainer,location)
        @location = location
        @trainer = trainer
        self.class.all << self
    end

end