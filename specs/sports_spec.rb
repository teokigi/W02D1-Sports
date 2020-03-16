require('minitest/autorun')
require('minitest/reporters')

require_relative('../sports.rb')

class TestSports < MiniTest::Test

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

    def test_001_get_team_name_and_return_glasgow_gladiators
        assert_equal("glasgow gladiator",@team_gg.get_name)
    end

    def test_002_get_team_roster
        assert_equal(["jimm","jack","jake","jeremy","joey","joseph","jerry"], @team_gg.get_roster)
    end

    def test_003_get_team_coach_return_williamson
        assert_equal("williamso",@team_gg.get_coach)
    end

end
