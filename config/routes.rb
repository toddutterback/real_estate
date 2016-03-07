Rails.application.routes.draw do

  get 'users/new'

  get 'sessions/new'

root 'sellers#index'

  resources :sellers do
    resources :homes do
      resources :addresses
    end
  end

end
