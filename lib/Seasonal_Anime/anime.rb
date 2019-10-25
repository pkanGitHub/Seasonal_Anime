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
