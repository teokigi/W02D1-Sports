require('minitest/autorun')
require('minitest/reporters')

require_relative('../sports.rb')

class TestSports < MiniTest::Test
    #setup initial values
    def setup

        roster = [
                "jimmy",
                "jack",
                "jake",
                "jeremy",
                "joey",
                "joseph",
                "jerry"]

        @team_gg = SportsTeam.new("glasgow gladiators", roster, "williamson")

    end
    #test get name function
    def test_001_get_team_name_and_return_glasgow_gladiators
        assert_equal("glasgow gladiators",@team_gg.get_name)
    end
    #test get team roster function
    def test_002_get_team_roster
        assert_equal(["jimmy","jack","jake","jeremy","joey","joseph","jerry"], @team_gg.get_roster)
    end
    #test get team coach function
    def test_003_get_team_coach_return_williamson
        assert_equal("williamson",@team_gg.get_coach)
    end
    #test set team name function
    
    #test adding to roster
    #test removing from roster
    #test setting new coach

end
