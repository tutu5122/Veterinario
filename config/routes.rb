Rails.application.routes.draw do
  resources :pet_histories
  resources :pets
  
  root 'pets#index'
end
