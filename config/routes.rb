Rails.application.routes.draw do


  get 'landing_page/index'

root 'home#index'

  resources :sellers do
    resources :homes do
      resources :addresses
    end
  end

  resources :users
  resources :sessions

end
