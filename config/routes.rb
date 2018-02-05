Rails.application.routes.draw do
  resources :lectures
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/web', to: 'workshops#web'
  resources :workshops
  
  # get '/:name', to: 'workshops#show', as: :workshop
  # resources :workshops

  root to: "workshops#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
