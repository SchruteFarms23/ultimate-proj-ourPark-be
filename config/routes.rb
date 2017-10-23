Rails.application.routes.draw do
  resources :teams, :only => [:show]
  post '/teams/adduser', to: 'teams#add_user'
  resources :parks
  resources :stats
  resources :users, :except => [:update,:destroy]
  patch 'users/add', to: 'users#update'
  delete 'users/delete', to: 'users#destroy'
  get '/welcome', to: 'application#welcome'
  post '/login', to: 'auth#create'

  post '/games/create', to: 'games#create'
  post '/games/active', to: 'games#active_games'
  post '/games/pending', to: 'games#pending_games'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
