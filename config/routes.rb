Rails.application.routes.draw do
  get 'player/create'
  root 'home#index'
  resources :home
  resources :players
end
