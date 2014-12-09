Rails.application.routes.draw do

  root 'welcome#index'

  resources :users,
            only: [:new, :create],
            path_names: { new: 'signup' }

  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get 'play_game' => 'play_game#play_game'
  get 'select_crew' => 'play_game#select_crew'

end
