# Our CLI Controller
class SeasonalAnime::CLI

  def call
      year = year_menu
      season_menu(year)
      # self.scrape_anime
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
        season_anime("Winter", year)
      when "2"
        season_anime("Spring", year)
      when "3"
        season_anime("Summer", year)
      when "4"
        season_anime("Fall", year)
      when "exit"
        puts "See you next time!"
      else
        puts "Please only select from the menu: "
        season_menu(year)
      end
    end

    def select_an_anime_for_detail(period)
      anime_array = period.animes
      puts "Please select the number of the anime information you want to see: "
      input = gets.strip.to_i - 1 # index value 0 - max_input
      max_inputs = anime_array.size - 1

      # have an input selecting anime
      # if input is less than maximum input which is input - 1 to start from 0 index
      # print detail title, producer, eps...etc of one anime user input
      #

      if input < max_inputs
        anime = anime_array[input] # The 1 anime object that user selected
        show_anime_details(anime)
      else
        puts "Something went wrong, please only input number from 1 - #{max_inputs}"
        select_an_anime_for_detail(period)
      end

      #get user selection setup if else..

    end

      def season_anime(season, year)
        puts "List of #{season} anime:"
        # Period.make_anime_list
        period = Period.find_by_season_and_year(season, year)
        period.animes.each.with_index(1) do |anime, i|
          puts "#{i}. #{anime.title}"
        end
        select_an_anime_for_detail(period)

        binding.pry
      end

      def show_anime_details(anime)
          puts "Title: #{anime.title}"
          puts "Producer: #{anime.producer}"
          puts "Score: #{anime.score}"
          puts "Episodes: #{anime.episodes}"
          puts "Source: #{anime.source}"
          puts "Synopsis: #{anime.synopsis}"
      end

end
