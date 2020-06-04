require 'pry'

class Entertainment
  attr_accessor :type_of, :title

  @@all = []
  
  def initialize(title, type_of)
    self.title = title
    self.type_of = type_of
  end

  def self.create(title, type_of)
    # create the instance
    # entertainment = Entertainment.new(title, type_of)
    # save the instance
    # entertainment.save
    # return the instance
    # entertainment

    Entertainment.new(title, type_of).tap {|entertainment| entertainment.save}
  end
  
  def save
    @@all << self
  end

  def self.games
    self.all.find_all {|entertainment| entertainment.type_of == "Game"}
  end

  def self.movies
    self.all.find_all {|entertainment| entertainment.type_of == "Movie"}
  end

  def self.all
    @@all
  end
end

movie_1 = Entertainment.create("Lord Of The Rings", "Movie")
movie_1 = Entertainment.create("Top Gun", "Movie")
movie_1 = Entertainment.create("Ferris Beiler's day off", "Movie")
movie_1 = Entertainment.create("Frozen", "Movie")
game_1 = Entertainment.create("Return Of The King", "Game")
game_1 = Entertainment.create("Munchkin", "Game")
game_1 = Entertainment.create("Catan", "Game")
game_1 = Entertainment.create("Risk", "Game")

binding.pry