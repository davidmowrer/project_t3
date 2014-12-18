Rails.application.routes.draw do

  resources :players

  root 'welcome#index'

  resources :users,
            only: [:new, :create],
            path_names: { new: 'signup' }

  resources :player,
            only: [:new, :create],
            path_names: { new: 'player_signup'}

  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get 'play_game' => 'play_game#play_game'
  get 'player_login' => 'players#login'
  get 'count_down' => 'play_game#count_down'
  get 'blastoff' => 'play_game#blastoff'
  get 'orbit_earth' => 'play_game#orbit_earth'
  get 'moon' => 'play_game#moon'
  get 'earth_chicken' => 'play_game#earth_chicken'
  get 'rubber_chicken' => 'play_game#rubber_chicken'
  get 'crashed_earth' => 'play_game#crashed_earth'
  get 'update_status' => 'play_game#update_status'
  get 'crashed_liftoff' => 'play_game#crashed_liftoff'
  get 'loser' => 'play_game#loser'




  get 'player_levels' => 'player#show'


end
