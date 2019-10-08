class SeasonalAnime::ListSeasons

def self.seasons
  # I should return a bunch of instances of seasons
  puts <<-DOC.gsub /^\s*/, ''
    1.Winter
    2.Spring
    3.Summer
    4.Fall
  DOC
  seasons_1 = self.new
  seasons_1.season = "Winter"
  seasons_2 = self.new
  seasons_2.season = "Winter"
  seasons_3 = self.new
  seasons_3.season = "Winter"
  seasons_4 = self.new
  seasons_4.season = "Winter"
  
end
