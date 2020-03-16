class SportsTeam

# attr_accessor :team_name, :players_on_team, :team_coach,

  def initialize(name,roster,coach)
      @name = name
      @roster = roster
      @coach = coach
  end
  #get team name
  def get_name
      return @name
  end
  #get team roster list
  def get_roster
      return @roster
  end
  #get team coach
  def get_coach
      return @coach
  end
  #set team name
  #add new team member to roster
  #remove team member from roster
  #set team coach

end
