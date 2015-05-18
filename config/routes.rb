Rails.application.routes.draw do
  root to: 'ratings#index'
  devise_for :users
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :ratings, only: [:create, :new]
  end
end
