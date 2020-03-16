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
        assert_equal("glasgow gladiators",@team_gg.name)
    end
    #test get team roster function
    def test_002_get_team_roster
        assert_equal(["jimmy","jack","jake","jeremy","joey","joseph","jerry"], @team_gg.roster)
    end
    #test get team coach function
    def test_003_get_team_coach_return_williamson
        assert_equal("williamson",@team_gg.coach)
    end
    #test set team name function
    def test_004_set_team_name_glasgow_gluttons
        @team_gg.name = "glasgow gluttons"
        assert_equal("glasgow gluttons", @team_gg.name)
    end
    #test adding to roster
    def test_005_add_to_roster_jeff
        @team_gg.roster.push("jeff")
        assert_equal(8,@team_gg.roster.length)
    end

    #test removing from roster
    def test_006_remove_from_roster_by_name
        @team_gg.roster.delete("jimmy")
        assert_equal(6,@team_gg.roster.length)
    end

    #test setting new coach
    def test_007_set_coach_hendrix
        @team_gg.coach = "hendrix"
        assert_equal("hendrix",@team_gg.coach)
    end
    #check player by name, true
    def test_008_check_player_by_name_true
        assert_equal(true, @team_gg.check_for_player("jimmy"))
    end
    #check player by name, false
    def test_009_check_player_by_name_false
        assert_equal(false,@team_gg.check_for_player("frank"))
    end
    #add victory point of 2.
    def test_010_team_wins_a_game_gains_2_points
        @team_gg.add_game_result("win")
        assert_equal(2,@team_gg.points)
    end
    #on loss no points added
    def test_011_team_loses_a_game_gains_0_points
        @team_gg.add_game_result("loses")
        assert_equal(0,@team_gg.points)
    end
end
