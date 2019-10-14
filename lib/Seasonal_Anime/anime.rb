class Anime
  attr_accessor :title, :score, :synopsis, :episodes, :producer, :source

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def titles
    Period.animes.select{|title| anime.title == title}
    titles.each{|title| puts title}
    binding.pry
  end

  def print_detail_list
    Period.animes
    Anime.all.each do |anime|
      puts "Title: #{anime.title}"
      puts "Producer: #{anime.producer}"
      puts "Score: #{anime.score}"
      puts "Episodes: #{anime.episodes}"
      puts "Source: #{anime.source}"
      puts "Synopsis: #{anime.synopsis}"
    end
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
