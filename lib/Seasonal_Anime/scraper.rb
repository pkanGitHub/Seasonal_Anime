require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative 'animeList.rb'

class Scraper
  def get_page
    doc = Nokogiri::HTML(open("https://myanimelist.net/anime/season/archive"))
  end

  def get_anime_list
    self.get_page.css(".post")
  end

  def make_anime_list
    self.get_anime_list.each do |post|
      list = Anime.new
      anime.title = post.css("h1").text
      anime.year = post.css("h2").text
      anime.season = post.css(".date").text
      anime.name = post.css("span").text
      anime.description = post.css("p").text
    end
  end

  def print_anime_list
    self.make_anime_list
    Anime.all.each do |list|
      if anime.
    end
  end
end
