Rails.application.routes.draw do


  get 'home/index'

root 'home#index'

  resources :sellers do
    resources :homes do
      resources :addresses
    end
  end

  resources :users
  resources :sessions

end
