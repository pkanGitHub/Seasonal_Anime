class Anime
  attr_accessor :name, :score, :synopsis, :episodes, :aired, :genres

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.winter_anime
    @@all.select{|anime| anime.season == "winter"}
  end

  def self.spring_anime
    puts "List of Spring anime"
    @@all.select{|anime| anime.season == "spring"}
  end

  def self.summer_anime
    puts "List of Summer anime"
    @@all.select{|anime| anime.season == "summer"}
  end

  def self.fall_anime
    puts "List of Fall anime"
    @@all.select{|anime| anime.season == "fall"}
  end
end
