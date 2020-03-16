require('minitest/autorun')
require('minitest/reporters')

require_relative('../sports.rb')

class TestSports < MiniTest::Test

    def setup
        team_gg = SportsTeam.new("glasgow_gladiators",
                                                [
                                                    "jimmy",
                                                    "jack",
                                                    "jake",
                                                    "jeremy",
                                                    "joey",
                                                    "joseph",
                                                    "jerry"],
                                                "williamson")
    end

    def test_001_get_team_name_and_return_glasgow_gladiators
        assert_equal("glasgow_gladiators",team_gg.get_name)
    end

    def test_002_get_team_roster
        assert_equal(["jimmy","jack","jake","jeremy","joey","joseph","jerry"], team_gg.get_roster)
    end

    def test_003_get_team_coach_return_williamson
        assert_equal("williamson",team_gg.get_coach)
    end
    
end
