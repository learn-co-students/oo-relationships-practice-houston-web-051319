class Movie
    attr_reader :title
    @@all = []
  
    def initialize(title)
      @title = title
      @@all << self
    end
    def self.all
      @@all
    end
  
  end
  
  class Show
    attr_reader :title
    @@all = []
    def initialize(title)
      @title = title
      @@all << self
    end
    def self.all
      @@all
    end
    
  end
  class Character
    attr_reader :name, :movie, :actor, :show
    @@all = []
    def initialize(name, actor, production)
      @name = name
      @actor
      if production.class == Movie
        @movie = production
      else
        @show = production 
      end
      @@all << self
    end

    def self.all
      @@all
    end
  
  
  
  end
  class Actor
    attr_reader :name, 
    @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end
    def self.all
      @@all
    end
  end
  