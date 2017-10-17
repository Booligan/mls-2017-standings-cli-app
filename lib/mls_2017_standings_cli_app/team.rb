class Team
  attr_accessor :name, :games_played, :wins, :loses, :ties

  @@all = []

  def initialize(team)
    team.each_key{|k| self.send("#{k}=", team[k])}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_scrape(team)
    Team.new(team)
  end

  def self.eastern_conf
    self.all[0..10]
  end

  def self.western_conf
    self.all[11..23]
  end

end
