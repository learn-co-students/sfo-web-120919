Rails.application.routes.draw do
  resources :users, only: [:create, :index, :show]
  get '/signup', to: 'users#new', as: 'signup'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/', to: 'sessions#new', as: 'home'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/delete_account', to: 'users#destroy', as: 'delete_account'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
