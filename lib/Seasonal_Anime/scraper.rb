class Scraper

  def self.anchors
    site = Nokogiri::HTML(open("https://myanimelist.net/anime/season/archive"))
    site.css("table a")
  end

  def self.periods
    anchors.map do |anchor|
      period = Period.new
      period.url = anchor.attribute("href").value
      period.season = anchor.text.strip.split[0]
      period.year = anchor.text.strip.split[1]

      period
    end
  end
end
