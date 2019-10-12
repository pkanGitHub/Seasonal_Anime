class Period < SeasonalAnime::CLI

  attr_accessor :season, :year, :url

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_season_and_year(season, year)
    period = Scraper.periods.detect{|period| period.season == "#{season}" && period.year == "#{year}"}
  end

  def store_anime(anime) #return array of the anime of t
    #return all animes in the database
    site = Nokogiri::HTML(open(url))

    anime = Anime.new
    anime.title = site.css("p.title-text").text.strip
    anime.producer = site.css("span.producer a").text
    anime.score = site.css("span.score").text.strip
    anime.episodes = site.css("div.eps span").text
    anime.source = site.css("span.source").text
    anime.synopsis = site.css("div.synopsis.js-synopsis").text.strip

    # store the info of an anime
    binding.pry
    puts anime
    anime
  end
  # 
  # def self.get_anime_list()
  #   list = []
  #   list << self.store_anime
  #   binding.pry
  # end

end
