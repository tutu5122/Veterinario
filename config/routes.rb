Rails.application.routes.draw do
  resources :clients
  resources :pet_histories
  resources :pets
  
  root 'pets#index'
end
