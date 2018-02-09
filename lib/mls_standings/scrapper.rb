class  MlsStandings::Scrapper

  def self.get_page
    html = open("https://www.mlssoccer.com/standings")
    Nokogiri::HTML(html)
  end

  def self.scrape_teams
    html = self.get_page
    table = html.css('.standings_table tbody tr')
    teams_hash_array = []

    table.each do |team|
      name = team.css('[data-title="Club"] .hide-on-mobile-inline').text
      games_played = team.css('[data-title="Games Played"]').text
      wins = team.css('[data-title="Wins"]').text
      losses = team.css('[data-title="Losses"]').text
      ties = team.css('[data-title="Ties"]').text
      name.slice!('x - ')
      name.slice!('s - ')
      name.slice!('y - ')
      team_hash = {:name => name, :games_played => games_played, :wins => wins, :losses => losses, :ties => ties}
      teams_hash_array << team_hash
    end
      teams_hash_array.delete_at(0)
      teams_hash_array.delete_at(11)
      teams_hash_array
  end

  def self.create_teams
    teams = self.scrape_teams
    teams.each{|team|  MlsStandings::Team.create_from_scrape(team)}
  end

end
