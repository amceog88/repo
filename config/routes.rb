Rails.application.routes.draw do
  # resources :issuetags
  root to: 'issues#index'

  resources :issues do
    collection do
      get 'tips'
    end
  end

  resources :search, only: [:index]
  resources :groups do
    member do
      post :join
      post :leave
    end
  end
  resources :calendars, only: [:index]

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  namespace :admin do
    root to: 'users#index'
    resources :users
  end

end
