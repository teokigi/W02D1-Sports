class SportsTeam
    #allows access to team attributes
    attr_accessor :name, :roster, :coach

  def initialize(name,roster,coach)
      @name = name
      @roster = roster
      @coach = coach
  end
  #old getter functions
  #---------------------
  #get team name
  # def get_name
  #     return @name
  # end
  # #get team roster list
  # def get_roster
  #     return @roster
  # end
  # #get team coach
  # def get_coach
  #     return @coach
  # end
  #----------------------
  #old setter functions
  #----------------------
  #set team name
  # def set_name(new_name)
  #     @name = new_name
  # end
  #add new team member to roster
  # def add_to_roster(new_player)
  #     @roster.push(new_player)
  # end
  # # #remove team member from roster
  # def remove_roster(player)
  #     @roster.delete(player)
  # end
  # #set team coach
  # def set_coach(new_coach)
  #     @coach = new_coach
  # end
  #--------------------
  def check_roster(player_name)

  end

#class end
end
