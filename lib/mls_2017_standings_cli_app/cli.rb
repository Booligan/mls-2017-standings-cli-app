class Mls2017StandingsCliApp::CLI

  def call

    puts "    ********************".colorize(:blue)
    puts "    *MLS 2017 Standings*".colorize(:red)
    puts "    ********************".colorize(:blue)
    Scraper.create_teams
    start_conf

  end

  def start_conf
    puts "\n1. Eastern Conference."
    puts "2. Western Conference.\n\n"

    puts "Enter '1' for the MLS Eastern Conference."
    puts "Enter '2' for the MLS Wastern Conference."
    input = nil
    until input == 'exit'
      puts "\nSelect a conference or type 'exit': "
      input = gets.strip.downcase
      case input.downcase
      when "1"
        eastern_conf
      when "2"
        western_conf
      when "exit"
        exit
      else
        puts "Not Valid. Please select a conference or type 'exit'. "
      end
    end
  end

  def eastern_conf
    system "clear"
    puts "     MLS Eastern Conference".colorize(:blue)
    puts "     **********************".colorize(:blue)
    Team.eastern_conf
  end

  def western_conf
    system "clear"
    puts "     MLS Western Conference".colorize(:red)
    puts "     **********************".colorize(:red)
    Team.western_conf
  end

end
