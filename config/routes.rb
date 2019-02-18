Rails.application.routes.draw do
  resources :issuetags
  root to: 'issues#index'

  resources :issues

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  namespace :admin do
    root to: 'users#index'
    resources :users
  end

end
