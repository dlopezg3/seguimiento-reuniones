Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :meets do
    resources :assistances, only: %i[new create]
    resources :tasks, only: %i[new create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
