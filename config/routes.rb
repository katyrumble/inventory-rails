Rails.application.routes.draw do
  root 'assets#index'
  resources :assets
  resources :locations
  resources :models
  resources :manufacturers
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
