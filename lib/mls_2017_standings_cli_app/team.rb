class Team
  attr_accessor :name, :games_played, :wins, :losses, :ties

  @@all = []

  def initialize(team)
    @name = team[:name]
    @games_played = team[:games_played]
    @wins = team[:wins]
    @losses = team[:losses]
    @ties = team[:ties]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_scrape(team)
    self.new(team)
  end

  def self.eastern_conf
    self.all[0..10]
  end

  def self.western_conf
    self.all[11..21]
  end

end
