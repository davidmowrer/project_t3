Rails.application.routes.draw do

  resources :players

  root 'welcome#index'

  resources :users,
            only: [:new, :create],
            path_names: { new: 'signup' }

  resources :player,
            only: [:new, :create, :show],
            path_names: { new: 'player_signup'}

  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get 'player_login' => 'players#login'
  post 'player_login' => 'players#create'
  get 'player_status' => 'pleyers#status'
  get 'play_game' => 'play_game#play_game'
  get 'count_down' => 'play_game#count_down'
  get 'blastoff' => 'play_game#blastoff'
  get 'orbit_earth' => 'play_game#orbit_earth'
  get 'moon' => 'play_game#moon'
  get 'earth_chicken' => 'play_game#earth_chicken'
  get 'rubber_chicken' => 'play_game#rubber_chicken'
  get 'crashed_earth' => 'play_game#crashed_earth'
  get 'update_status' => 'play_game#update_status'
  get 'crashed_liftoff' => 'play_game#crashed_liftoff'
  get 'biggest_loser' => 'play_game#biggest_loser'
  get 'loser' => 'play_game#loser'
  get 'abduction' => 'play_game#abduction'
  get 'alien' => 'play_game#alien'
  get 'alien_attack' => 'play_game#alien_attack'
  get 'alien_fly' => 'play_game#alien_fly'
  get 'alien_fire' => 'play_game#alien_fire'
  get 'alien_fight' => 'play_game#alien_fight'
  get 'alien_loss' => 'play_game#alien_loss'
  get 'earth_winner' => 'play_game#earth_winner'
  get 'mars' => 'play_game#mars'
  get 'mars_landing' => 'play_game#mars_landing'

end
