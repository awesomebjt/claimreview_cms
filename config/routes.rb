Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: "home#index"

  resources :claim_reviews
  resources :review_ratings
  resources :item_revieweds
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
