class PlayGameController < ApplicationController

  def player
    render :player_path
  end

  def update_status
    render :edit_player_path
  end

  def player_update
    render :edit_player_path
  end

  def play_game
    @earned_alien == 0
    @earned_chicken == 0
    @earned_loser == 0
  end

  def count_down
  end

  def blastoff
    number = rand(2) + 1  # number between 1 & 2
    if number == 1
      render :crashed_liftoff
    elsif number == 2
      render :blastoff
    end
  end

  def crashed_liftoff
  end

  def loser
    @earned_loser == 1
  end

  def abduction
  end

  def orbit_earth
  end

  def earth_winner
    @earned_alien == 1
  end

  def earth_chicken
  end

  def chicken_return_to_earth
  end

  def rubber_chicken
    @earned_chicken == 1
  end

  def moon
    number = rand(2) + 1  # number between 1 & 2
    if number == 1
      render :moon_crash
    elsif number == 2
      render :moon
    end
  end

  def alien
  end

  def alien_attack
  end

  def alien_fly
  end

  def alien_fire
  end

  def alien_fight
    number = rand(2) + 1  # number between 1 & 2
    if number == 1
      render :alien_loss
    elsif number == 2
      render :alien_fight
    end
  end

  def alien_loss
  end

  def mars
  end

  def mars_landing
    number = rand(2) + 1  # number between 1 & 2
    if number == 1
      render :mars_capture
    elsif number == 2
      render :mars_landing
    end
  end

  def mars_capture
  end

end
