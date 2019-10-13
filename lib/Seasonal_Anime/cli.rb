# Our CLI Controller
class SeasonalAnime::CLI

  def call
      year = year_menu
      season_menu(year)
      self.scrape_anime
      # Scraper.periods
  end

  def year_menu
    year = nil
      puts "Please enter a year: "
      year = gets.strip
      # while year < 1917
        # puts "Sorry nothing before 1917 is available, please try again."
        # puts "Please enter a year: "
        # year = gets.strip
      # end
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
        spring_anime(year)
      when "3"
        summer_anime(year)
      when "4"
        fall_anime(year)
      when "exit"
        # puts "See you next time!"
      else
        # puts "Please only select from the menu: "
        # season_menu
      end
    end

      def winter_anime(year)
        puts "List of Winter anime:"
        # Period.make_anime_list
        period = Period.find_by_season_and_year("Winter", year)
        @animes.store_anime.each.with_index(1) do |title, i|
          puts "#{i}. #{title}"
        end
        binding.pry
      end

      def spring_anime(year)
        puts "List of Spring anime:"
        period = Period.find_by_season_and_year("Spring", year)
        # period = Scraper.periods.detect{|period| period.season == "Spring" && period.year == year}
        # binding.pry
        period.anime
      end

      def summer_anime(year)
        puts "List of Summer anime:"
        period = Period.find_by_season_and_year("Summer", year)
        # period = Scraper.periods.detect{|period| period.season == "Summer" && period.year == year}
        period.anime
      end

      def fall_anime(year)
        puts "List of Fall anime:"
        period = Period.find_by_season_and_year("Fall", year)
        # period = Scraper.periods.detect{|period| period.season == "Fall" && period.year == year}
        period.anime
      end
end
