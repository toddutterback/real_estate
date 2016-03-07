Rails.application.routes.draw do

  root 'landing_page#index'

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'

  resources :sellers do
    resources :homes do
      resources :addresses
    end
  end

  resources :users
  resources :sessions
  resources :landing_page

end
