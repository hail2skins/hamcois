Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :articles do
    resources :comments
  end

  resources :slogans

  resources :pages
 

  root to: 'pages#show', id: 'home'

  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'
  put '/signin', to: 'sessions#new'

  get ':id', to: 'pages#show', as: :view  
end
