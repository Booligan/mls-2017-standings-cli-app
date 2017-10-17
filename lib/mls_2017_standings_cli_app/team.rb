class Team
  attr_accessor :name, :games_played, :wins, :loses, :ties

  @@all = []

  def self.eastern_conf
    self.all[0..10]
  end

  def self.western_conf
    self.all[11..23]
  end

end
