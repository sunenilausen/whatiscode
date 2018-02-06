Rails.application.routes.draw do
  resources :lectures
  resources :workshops
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get '/web', to: 'workshops#web'
  get '/:workshop', to: 'workshops#show'
  get '/:workshop/:lecture', to: 'lectures#show'
  
  # get '/:name', to: 'workshops#show', as: :workshop
  # resources :workshops

  root to: "workshops#web"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
