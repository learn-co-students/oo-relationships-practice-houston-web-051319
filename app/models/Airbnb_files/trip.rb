class Trip
    attr_reader :listing, :guest, :name
    @@all = []

    def initialize(name,listing,guest)
        @name = name
        @listing = listing
        @guest = guest
        self.class.all << self
    end

    def self.all
        @@all
    end

end