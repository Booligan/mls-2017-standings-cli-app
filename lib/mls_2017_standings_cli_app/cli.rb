class Mls2017StandingsCliApp::CLI

  def call
    Scraper.create_teams
    start_menu
  end

  def start_menu
    system "clear"
    puts "    ***************".colorize(:blue)
    puts "    *MLS Standings*".colorize(:red)
    puts "    ***************".colorize(:blue)

    puts "\n1. Eastern Conference."
    puts "2. Western Conference.\n\n"
    puts "Enter '1' for the MLS Eastern Conference."
    puts "Enter '2' for the MLS Western Conference."
    puts "\nSelect a conference or type 'e' to exit: "
    input = nil

    until input == 'e' || input == '1' || input == '2'
      input = gets.strip.downcase
      case input.downcase
      when "1"
        eastern_conf
      when "2"
        western_conf
      when "e"
        exit
      else
        puts "Not Valid. Please select a conference: "
      end
    end
  end

  def eastern_conf
    system "clear"
    puts "     MLS Eastern Conference".colorize(:blue)
    puts "     **********************".colorize(:blue)
    i = 1
    teams= Team.eastern_conf
    teams.each do |team|
      puts  "#{i}. #{team.name}"
      i += 1
    end
    puts "\nSelect 1-11 to get more information on the team, 's' to switch conference, or exit:"
    input = nil

    until input == 'et' || input == 's' || input.to_i.between?(1, 11)
      input = gets.strip.downcase
      case
      when input.to_i.between?(1, 11)
        east_team_record(input.to_i)
      when input.downcase == "s"
        western_conf
      when input.downcase == "e"
        exit
      else
        puts "Not a valid team. Please select a valid team or, 's' to switch or 'e' to exit: "
      end
    end
  end

  def western_conf
    system "clear"
    puts "     MLS Western Conference".colorize(:red)
    puts "     **********************".colorize(:red)
    i = 1
    teams = Team.western_conf
    teams.each do |team|
        puts  "#{i}. #{team.name}"
        i += 1
    end
    puts "\nSelect 1-11 to get more information on the team, 's' to switch conference, or exit:"
    input = nil

    until input == 'e' || input == 's'||input.to_i.between?(1, 11)
      input = gets.strip.downcase
      case
      when input.to_i.between?(1, 11)
        west_team_record(input.to_i)
      when input.downcase == "s"
        eastern_conf
      when input.downcase == "e"
        exit
      else
        puts "Not a valid team. Please select a valid team or, 's' or 'e': "
      end
    end
  end

  def east_team_record(input)
    system "clear"
    team = Team.eastern_conf[input - 1]
    puts "#{team.name}".colorize(:blue)
    puts "***********************".colorize(:blue)
    puts "Games Played: #{team.games_played}"
    puts "Wins: #{team.wins}"
    puts "Losses: #{team.losses}"
    puts "Ties: #{team.ties}"
    puts "\n Type 'MLS' to restart CLI or 'e' to exit:"

    until input == 'e' || input == 'mls'
      input = gets.strip.downcase
      case input.downcase
      when "e"
        exit
      when "mls"
        start_menu
      else
        puts "Not Valid. Please select type 'MLS' or 'e': "
      end
    end
  end

  def west_team_record(input)
    system "clear"
    team = Team.western_conf[input - 1]
    puts "#{team.name}".colorize(:red)
    puts "***********************".colorize(:red)
    puts "Games Played: #{team.games_played}"
    puts "Wins: #{team.wins}"
    puts "Losses: #{team.losses}"
    puts "Ties: #{team.ties}"
    puts "\n Type 'MLS' to restart CLI or 'e' to exit:"

    until input == 'e' || input == 'mls'
      input = gets.strip.downcase
      case input.downcase
      when "e"
        exit
      when "mls"
        start_menu
      else
        puts "Not Valid. Please select type 'MLS' or 'exit': "
      end
    end
  end

end
