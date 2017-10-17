class Scraper

  def self.get_page
    html = open("https://www.mlssoccer.com/standings")
    Nokogiri::HTML(html)
  end

  def self.scrape_teams
    html = self.get_page
    name = html.css('table.standings_table tr td a')
    binding.pry
    #return array of teams_hash
  end

  def self.create_teams
    teams = self.scrape_teams
    teams.each{|team| Team.create_from_scrape(team)}
  end

end
