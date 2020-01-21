class SportTeam
  attr_reader :team_name
  attr_accessor :coach, :points, :players
    def initialize(team_name, players, coach, points)
      @team_name = team_name
      @players = players
      @coach = coach
      @points = points
  end

  def return_team_name
    return @team_name
  end

  def return_players
    return @players
  end

  def return_coach
    return @coach
  end

  def new_coach(new_coach)
    @coach = new_coach
  end

  def add_new_player(player)
    @players.push(player)
  end

  def look_for_player(player)
    player_array = []
    for name in @players
      if name == player
        player_array.push(player)
    end
  end
  return player_array
  end

  def check_points
    return @points
  end

  def points_update(score)
    if score == "win"
      @points += 1
  end
end





end
