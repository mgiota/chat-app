Rails.application.routes.draw do
	devise_for :users, :controllers => { registrations: 'registrations' }
  resources :messages
  resources :rooms do
  	resources :comments
		resources :memberships, only: [:index, :create]
  end
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'simple_pages#index'
  mount ActionCable.server => '/cable'
end
