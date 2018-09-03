Rails.application.routes.draw do
  resources :showcases
  resources :projects
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get '/docs', to: 'articles#index'
  
  resources :articles do
    member do
      get 'slides'
    end
  end
  resources :lectures, except: :index do
    member do
      get 'slides'
      get 'print'
    end
  end
  resources :workshops
  get '/:workshop', to: 'workshops#show'
  get '/:workshop/:lecture', to: 'lectures#show'
  get '/:workshop/:lecture/slides', to: 'lectures#slides'
  
  root to: "pages#welcome"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
