Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'

  match '/auth/:provider/callback', to: 'users#callback', via: [:get, :post]
  get 'users/signout'


  resources :meets do
    resources :assistances, only: %i[new create]
    resources :tasks, only: %i[new create]
    resources :plans, only: :create, defaults: {format: 'js'}, controller: "meets/plans"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
