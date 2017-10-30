Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#index'
  resources :games, only: [:index, :show] do
    resources :reviews, except: [:new, :show, :index], shallow: true
  end
  resources :users, except: [:index, :destroy]
  resources :sessions, only: [:new, :create, :destroy]  
end
