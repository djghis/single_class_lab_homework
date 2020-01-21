require('minitest/autorun')
require('minitest/reporters')
require_relative('../sport_team')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test

  def setup
    @team = SportTeam.new("Frenchies", ["Ghislain", "Carl", "Steven"], "Zsolt", 0)

  end

  def test_return_team_name
assert_equal("Frenchies", @team.return_team_name())
  end

  def test_return_players
assert_equal(["Ghislain", "Carl", "Steven"], @team.return_players)
  end

  def test_return_coach
assert_equal("Zsolt", @team.return_coach)
  end

  def test_new_coach
    @team.coach = "Eugene"
    assert_equal("Eugene", @team.return_coach)
  end

  def test_add_new_player
    @team.add_new_player("Alan")
assert_equal(["Ghislain", "Carl", "Steven", "Alan"], @team.players)
  end

  def test_look_for_player__present

assert_equal(["Carl"], @team.look_for_player("Carl"))
  end
  def test_look_for_player__not_present
assert_equal([], @team.look_for_player("John"))
  end

def test_check_points
assert_equal(0, @team.check_points)
end

  def test_points_update
 @team.points_update("win")
 assert_equal(1, @team.points)
  end


end
