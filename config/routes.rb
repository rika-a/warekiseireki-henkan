Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  root to:"memos#index"
  
  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  
  post "/create", to:"memos#create"
  get "/show", to:"users#show"
  
  delete "/memos/:id", to:"memos#destroy"
end

