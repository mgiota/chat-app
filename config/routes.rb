Rails.application.routes.draw do
  get 'simple_pages/index'
  resources :messages
  resources :rooms
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'simple_pages#index'
end
