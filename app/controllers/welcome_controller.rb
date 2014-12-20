class WelcomeController < ApplicationController

  def index
  end

  def play_game
    render :play_game_path
  end

end
