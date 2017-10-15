class Mls2017StandingsCliApp::Scraper
  def scrape_mls_teams
    html = open("https://www.mlssoccer.com/standings")
    doc = Nokogiri::HTML(html)
    binding.pry
  end
end
