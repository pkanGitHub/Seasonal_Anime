# Our CLI Controller

class SeasonalAnime::CLI

  def call
      year = year_menu
      season_menu(year)
      Scraper.periods
  end

  # class SeasonalAnime::CLI
  #
  #   def call
  #     list_years
  #     menu
  #     goodbye
  #   end

  def year_menu
    year = nil
    # while input != exit
      puts "Please enter a year: "
      year = gets.strip
      # puts "If you want to quit, type exit."
  end

  def season_menu(year)
    season = nil
      puts "List of Seasons:"

      puts "1. Winter"
      puts "2. Spring"
      puts "3. Summer"
      puts "4. Fall"

      puts "Please select one season: "
      season = gets.strip

      case season
      when "1"
        winter_anime(year)
      when "2"
        spring_anime
      when "3"
        self.summer_anime
      when "4"
        fall_anime
      when "exit"
        # puts "See you next time!"
      else
        # puts "Please only select from the menu: "
        # season_menu
      end
    end

      def winter_anime(year)
        puts "List of Winter anime"
        period = Scraper.periods.detect{|period| period.season == "Winter" && period.year == year}
        binding.pry
        Anime.all
      end

      def spring_anime
        puts "List of Spring anime"
      end

      def summer_anime
        puts "List of Summer anime"
      end

      def fall_anime
        puts "List of Fall anime"
      end

end

    # period.url = anchor.attribute("href").value
    # period.season = anchor.text.strip.split[0]
    # period.year = anchor.text.strip.split[1]

    # def menu
    #   input = nil
    #   while input != "exit"
        # puts "Enter the number for the period you are looking for or type list to see again (or type exit): "

        # puts "Enter the season and year you want to search, ex: 'Summer 2015'"
        # input = gets.strip.downcase
        # input.split(" ")[1] # 2015
        # case input
#   end
#
# end
#   def list_years
#     # here doc
#     puts "List of Years:"
#     # puts <<-DOC.gsub /^\s*/, ''
#     #   1.2016
#     #   2.2017
#     #   3.2018
#     #   4.2019
#     #   5.2020
#     # DOC
#     @lists = SeasonalAnime::List.list_years
#   end

  # def list_seasons
  #   puts "List of Seasons:"
  # end

  # def menu
  #   input = nil
  #   while input != "exit"
      # puts "Enter the number for the period you are looking for or type list to see again (or type exit): "

      # puts "Enter the season and year you want to search, ex: 'Summer 2015'"
      # input = gets.strip.downcase
      # input.split(" ")[1] # 2015
      # case input


      # when "1"
      #   puts "List the seasons of 2016"
      # when "2"
      #   puts "List the seasons of 2017"
      # when "3"
      #   puts "List the seasons of 2018"
      # when "4"
      #   puts "List the seasons of 2019"
      # when "5"
      #   puts "List the seasons of 2020"

## OR
#     when "1"
#       puts "List the anime of Spring 2018"
#
#     when "list"
#
#         list_years
#       else
#         puts "Please only select what is available(1-5 or list or exit)"
#       end
#     end
#   end
#
#   def goodbye
#     puts "See you later!"
#   end
#
# end
