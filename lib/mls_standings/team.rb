class Team
  attr_accessor :name, :games_played, :wins, :losses, :ties

  @@all = []

  def initialize(team_hash)
    team_hash.each_key{|k| self.send("#{k}=", team_hash[k])}
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
    self.all[11..22]
  end

end
