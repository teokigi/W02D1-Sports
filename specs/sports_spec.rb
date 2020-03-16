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
    def test_004_set_team_name_glasgow_gluttons
        @team_gg.set_name("glasgow gluttons")
        assert_equal("glasgow gluttons", @team_gg.get_name)
    end
    #test adding to roster
    def test_005_add_to_roster_jeff
        @team_gg.add_to_roster("jeff")
        assert_equal(8,@team_gg.get_roster.length)
    end

    #test removing from roster
    def test_006_remove_from_roster_by_name
        @team_gg.remove_roster("jimmy")
        assert_equal(6,@team_gg.get_roster.length)
    end

    #test setting new coach
    def test_007_set_coach_hendrix
        @team_gg.set_coach("hendrix")
        assert_equal("hendrix",@team_gg.get_coach)
    end

end
