class Movie
  attr_reader :movie_title
  @@all = []

  def initialize(movie_title)
    @movie_title = movie_title
    @@all << self
  end
  def self.all
    @@all
  end

  def self.actor_movie_count(title)
    actor_obj = Actor.all.select {|obj| obj.production.title == title}
    actor_count = actor_obj.map {|actor| actor.name}
    actor_count.count
  end
  def self.most_actors
    all_titles = self.all.map {|movie_obj| movie_obj.movie_title}
    actor_count = 0
    movie_with_most_actors = nil
    all_titles.each do |title|
      if actor_movie_count(title) > actor_count
        actor_count = actor_movie_count(title)
        movie_with_most_actors = title
      end
    end
    movie_with_most_actors
  end

end

class Show
  attr_reader :show_title
  @@all = []
  def initialize(show_title)
    @show_title = show_title
    @@all << self
  end
  def self.all
    @@all
  end
  def on_the_big_screen
    title = []
     Movie.all.map do |movie_obj|
       if movie_obj.movie_title == self.show_title
         title << self.show_title
       end
     end
     title
  end
end
class Character
  attr_reader :name, :production_obj
  @@all = []
  def initialize(name, production_obj)
    @name = name
    @production = production_obj
    @@all << self
  end
  def self.all
    @@all
  end



end
class Actor
  attr_reader :name, :character, :production
  @@all = []
  def initialize(name, character, production)
    @name = name
    @character = character
    @production = production
    @@all << self
  end
  def self.all
    @@all
  end
end
