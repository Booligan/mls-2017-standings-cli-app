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
    i = 1
    teams= self.all[0..10]
    teams.each do |team|
      puts  "#{i}. #{team.name}"
      i += 1
    end
  end

  def self.western_conf
    i = 1
    teams = self.all[11..22]
    teams.each do |team|
      puts  "#{i}. #{team.name}"
      i += 1
    end
  end

end
