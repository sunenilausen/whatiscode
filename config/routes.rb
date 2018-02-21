Rails.application.routes.draw do
  get '/docs', to: 'articles#docs'
  resources :articles do
    member do
      get 'slides'
    end
  end
  resources :lectures do
    member do
      get 'slides'
    end
  end
  resources :workshops
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/:workshop', to: 'workshops#show'
  get '/:workshop/:lecture', to: 'lectures#show'
  get '/:workshop/:lecture/slides', to: 'lectures#slides'
  
  root to: "pages#welcome"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
