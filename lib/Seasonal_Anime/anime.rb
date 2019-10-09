class Anime
  attr_accessor :name, :score, :synopsis, :episodes, :aired, :genres

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
