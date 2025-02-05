Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only: [:index]
  resources :platforms, only: [:index]
  resources :topics, only: [:index]
  resources :issues, only: [:index]
  resources :feedback, only: [:create]
end
