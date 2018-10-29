Rails.application.routes.draw do
  devise_for :users
  get 'simple_pages/index'
  resources :messages
  resources :rooms do
  	resources :comments
  end
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'simple_pages#index'
  mount ActionCable.server => '/cable'
end
