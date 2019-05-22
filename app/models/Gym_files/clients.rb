class Client
    attr_reader :name
    attr_accessor :trainer
    
    @@all = []
    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def assign_trainer(trainer)
        self.trainer = trainer
    end

end