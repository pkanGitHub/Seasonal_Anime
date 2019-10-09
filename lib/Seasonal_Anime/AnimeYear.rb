# class SeasonalAnime::ListPeriod
#   attr_accessor :years, :seasons
#
#   def self.years
#     # I should return a bunch of instances of years
#     puts <<-DOC.gsub /^\s*/, ''
#       1.2016
#       2.2017
#       3.2018
#       4.2019
#       5.2020
#     DOC
#     years_1 = self.new
#     years_1.year = "2016"
#     years_2 = self.new
#     years_2.year = "2017"
#     years_3 = self.new
#     years_3.year = "2018"
#     years_4 = self.new
#     years_4.year = "2019"
#     years_5 = self.new
#     years_5.year = "2020"
#
#     [years_1, years_2, years_3, years_4, years_5]
#   end
#
#   def self.list_seasons
#     # I should return a bunch of instances of seasons
#     puts <<-DOC.gsub /^\s*/, ''
#       1.Winter
#       2.Spring
#       3.Summer
#       4.Fall
#     DOC
#     seasons_1 = self.new
#     seasons_1.season = "Winter"
#     seasons_2 = self.new
#     seasons_2.season = "Winter"
#     seasons_3 = self.new
#     seasons_3.season = "Winter"
#     seasons_4 = self.new
#     seasons_4.season = "Winter"
#   end
#
# end
