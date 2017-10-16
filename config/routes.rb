Rails.application.routes.draw do
  resources :parks
  resources :users, :except => [:update]
  patch 'users/add', to: 'users#update'
  get '/welcome', to: 'application#welcome'
  post '/login', to: 'auth#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
