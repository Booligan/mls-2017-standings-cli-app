# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
# I built the initial menu for the CLI. It currently displays the title and a menu for which Conference to select, or to exit.
# Each Conference calls a method to display the teams in the selected conference.
- [x] Pull data from an external source
# Used Nokogiri to scrape a table into a variable. I was then able to iterate over each 'tr' tag, and grab the attributes for each team instance.
# Once all of the data was scraped and pushed into the teams_hash_array, I was able to turn this data into instances of the Team class.
- [x ] Implement both list and detail views
# Once all of my instances were created and added to the @@all array, I was able to complete the CLI.
# The first menu splits Team.all in half to list the league conferences.
# The second menu shows all of the teams in their respective conferences sorted by their current place on the league table.
# The third menu shows games played and win-lose-tie record for the selected team.
