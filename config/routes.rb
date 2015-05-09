Rails.application.routes.draw do
  devise_for :users
  resources :restaurants, only: [:index, :new, :create]
end
