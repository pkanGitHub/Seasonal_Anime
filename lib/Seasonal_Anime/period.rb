class Period < SeasonalAnime::CLI

  attr_accessor :season, :year, :url

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.scrape_anime
    animes = []

    animes << self.periods
    animes << self.store_detail

    animes
  end

  def self.find_by_season_and_year(season, year)
    period = Scraper.periods.detect{|period| period.season == "#{season}" && period.year == "#{year}"}
  end

  def self.animes #return array of the anime of t
    #return all animes in the database
    site = Nokogiri::HTML(open(url))

    anime = Anime.new
    anime.title = site.css("p.title-text").text.strip
    anime.producer = site.css("span.producer a").text
    anime.score = site.css("span.score").text.strip
    anime.episodes = site.css("div.eps span").text
    anime.source = site.css("span.source").text
    anime.synopsis = site.css("div.synopsis.js-synopsis").text.strip


    # binding.pry
    anime
  end
end