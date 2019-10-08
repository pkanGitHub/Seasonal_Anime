# Our CLI Controller

class SeasonalAnime::CLI

  def call
    list_years
    menu
    goodbye
  end

  def list_years
    # here doc
    puts "List of Years:"
    # puts <<-DOC.gsub /^\s*/, ''
    #   1.2016
    #   2.2017
    #   3.2018
    #   4.2019
    #   5.2020
    # DOC
    @lists = SeasonalAnime::List.list_years
  end

  # def list_seasons
  #   puts "List of Seasons:"
  # end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number for the year you are looking for or type list to see again (or type exit): "
      input = gets.strip.downcase
      case input
      when "1"
        puts "List the seasons of 2016"
      when "2"
        puts "List the seasons of 2017"
      when "3"
        puts "List the seasons of 2018"
      when "4"
        puts "List the seasons of 2019"
      when "5"
        puts "List the seasons of 2020"
      when "list"
        list_years
      else
        puts "Please only select what is available(1-5 or list or exit)"
      end
    end
  end

  def goodbye
    puts "See you later!"
  end

end
