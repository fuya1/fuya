Rails.application.routes.draw do
  devise_for :users
  resources :shop_reviews
  resources :market_reviews
  resources :menus
  resources :shops
  resources :markets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'markets#index'
end
