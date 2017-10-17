class Mls2017StandingsCliApp::CLI

  def call

    puts "    ********************".colorize(:blue)
    puts "    *MLS 2017 Standings*".colorize(:red)
    puts "    ********************".colorize(:blue)

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
   puts "More info on the MLS Eastern Conference"
   teams = Team.eastern_conf
   teams.each{|team| puts team.name}
  end

  def western_conf
    puts "More info on the MLS Western Conference"
    teams = Team.western_conf
    teams.each{|team| puts team.name}
  end

end
