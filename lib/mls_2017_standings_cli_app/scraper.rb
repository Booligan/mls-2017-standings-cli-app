class Mls2017StandingsCliApp::Scraper

  def self.scrape_mls_teams
    html = open("https://www.mlssoccer.com/standings")
    doc = Nokogiri::HTML(html)
    table = doc.css('.standings_table a')
    teams = []
    teams_hash_array = []

    table.each do |team|
        teams << team.text
    end

    teams.delete("PPG")
    teams.delete("GP")
    teams.delete("W")
    teams.delete("L")
    teams.delete("T")
    teams.delete("GF")
    teams.delete("GA")
    teams.delete("GD")
    teams.delete("")

    teams.each do|team|
      team_hash = {:name => team}
      teams_hash_array << team_hash
    end
    teams_hash_array
    binding.pry
 end


end
