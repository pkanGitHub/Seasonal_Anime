class Anime
  attr_accessor :title, :score, :synopsis, :episodes, :producer, :source

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end

  # def self.winter_anime
  #   @@all.select{|anime| anime.season == "Winter"}
  # end
  #
  # def self.spring_anime
  #   puts "List of Spring anime"
  #   @@all.select{|anime| anime.season == "Spring"}
  # end
  #
  # def self.summer_anime
  #   puts "List of Summer anime"
  #   @@all.select{|anime| anime.season == "Summer"}
  # end
  #
  # def self.fall_anime
  #   puts "List of Fall anime"
  #   @@all.select{|anime| anime.season == "Fall"}
  # end
