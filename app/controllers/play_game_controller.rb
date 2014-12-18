class PlayGameController < ApplicationController

  def play_game
  end

  def player
    render :player_path
  end

  def count_down
  end

  def blastoff

    number = rand(2) + 1  # number between 1 & 2
    if number == 1
      render :crashed_liftoff
    # elsif number == 2
    #   render :blastoff
    end

  end

  def obrit_earth
  end

  def chicken_return_to_earth
  end

  def moon
  end

  def earth_chicken
  end

  def rubber_chicken
  end

  def update_status
  end

  def crashed_liftoff
  end

  def loser
  end

end
