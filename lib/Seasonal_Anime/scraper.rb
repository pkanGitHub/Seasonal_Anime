class Scraper

  # def self.scrape_animes_archive
  #   url = "https://myanimelist.net/anime/season/archive"
  #
  #   site = Nokogiri::HTML(open(url))
  #
  #   binding.pry
  # end

  def self.anchors
    site = Nokogiri::HTML(open("https://myanimelist.net/anime/season/archive"))
    site.css("table a")
  end

  def get_season_and_year_page
    url = period.url
    site = Nokogiri::HTML(open(url))
  end

  def self.periods
    anchors.map do |anchor|
      period = Period.new
      period.url = anchor.attribute("href").value
      period.season = anchor.text.strip.split[0]
      period.year = anchor.text.strip.split[1]
      # binding.pry

      period
    end
  end

  def self.animes
    anchors.each do |anchor|
      anime = Anime.new
      # anime.name =
      # anime.score =
      # anime.synopsis =
      # anime.episodes =
      # anime. aired =
      # anime.genres =

      binding.pry

      # anime
    end
  end

end




# class Scraper
#
#   def get_page
#     doc = Nokogiri::HTML(open("https://myanimelist.net/anime/season/archive"))
#   end
#
#   def get_anime_list
#     self.get_page.css(".post")
#   end
#
#   def make_anime_list
#     self.get_anime_list.each do |post|
#       list = Anime.new
#       anime.title = post.css("h1").text
#       anime.year = post.css("h2").text
#       anime.season = post.css(".date").text
#       anime.name = post.css("span").text
#       anime.description = post.css("p").text
#     end
#   end
#
#   def print_anime_list
#     self.make_anime_list
#     Anime.all.each do |list|
#       if anime.
#     end
#   end
# end
