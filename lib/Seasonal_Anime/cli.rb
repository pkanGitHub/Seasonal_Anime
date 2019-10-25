# Our CLI Controller
class SeasonalAnime::CLI

  def call
      year = year_menu
      season_menu(year)

  end

  def year_menu
    year = nil
    puts "\nPlease enter a year: "
    year = gets.strip.to_i
    if year < 1917    # NO Method Error
      puts "Sorry nothing before 1917 is available, please try again."
      year_menu
    elsif year > 2019
      puts "Sorry, the anime over 2019 aren't out yet, please enter the year within the range 1917 and 2019:"
      year_menu
    else
      puts "\nHow about seasons?"
    end
    year
  end

  def season_menu(year)
    season = nil
      puts "List of Seasons:"

      puts "\n1. Winter"
      puts "2. Spring"
      puts "3. Summer"
      puts "4. Fall"

      puts "\nPlease select one season: "
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
      puts "\nPlease select the number of the anime information you want to see: "
      input = gets.strip.to_i - 1 # index value 0 - max_input
      max_inputs = anime_array.size

      if input > 0 && input < max_inputs
        anime = anime_array[input] # The 1 anime object that user selected
        puts "\n"
        show_anime_details(anime)
      else
        puts "Something went wrong !!! Please only input number from 1 - #{max_inputs}"
        select_an_anime_for_detail(period)
      end

    end

      def season_anime(season, year)
        puts "\nList of #{season} anime:"
        period = Period.find_by_season_and_year(season, year)
        puts "#{season}, #{year}\n\n"
        period.animes.each.with_index(1) do |anime, i|
          puts "#{i}. #{anime.title}"
        end
        select_an_anime_for_detail(period)
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
