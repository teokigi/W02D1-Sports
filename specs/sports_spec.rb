require('minitest/autorun')
require('minitest/reporters')

require_relative('../sports.rb')

class TestSports < MiniTest::Test

    def setup
        glasgow_gladiators = SportsTeam.new("glasgow_gladiators",
                                                [
                                                    "jimmy",
                                                    "jack",
                                                    "jake",
                                                    "jeremy",
                                                    "joey",
                                                    "joseph",
                                                    "jerry"],
                                                "Williamson")
    end

    def test_001
    end

end
