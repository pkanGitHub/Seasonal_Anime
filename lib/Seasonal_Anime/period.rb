class Period

  attr_accessor :season, :year, :url

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
