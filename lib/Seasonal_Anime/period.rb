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

  def animes #return array of the anime of t
    #return all animes in the database
    site = Nokogiri::HTML(open(url)) # url is instance vari so class method cant access instance variables

    site.css("div.seasonal-anime.js-seasonal-anime").map do |div|
      anime = Anime.new
      anime.title = div.css("p.title-text").text.strip
      anime.producer = div.css("span.producer a").text
      anime.score = div.css("span.score").text.strip
      anime.episodes = div.css("div.eps span").text
      anime.source = div.css("span.source").text
      anime.synopsis = div.css("div.synopsis.js-synopsis").text.strip

      anime
  end
  end
end
