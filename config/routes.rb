Rails.application.routes.draw do
  root 'items#index'

  resources :items
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
