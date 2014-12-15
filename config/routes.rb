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
  get 'select_crew' => 'play_game#select_crew'
  get 'jetsons' => 'play_game#jetsons'
  get 'space_ghost' => 'play_game#space_ghost'
  get 'count_down' => 'play_game#count_down'


end
