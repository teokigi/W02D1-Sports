class SportsTeam

# attr_accessor :team_name, :players_on_team, :team_coach,

  def initialize(name,roster,coach)
      @name = name
      @roster = roster
      @coach = coach
  end

  def get_name
      return @name
  end

  def get_roster
      return @roster
  end

  def get_coach
      return @coach
  end
end
