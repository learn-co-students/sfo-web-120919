Rails.application.routes.draw do
  resources :cows, only: [:new, :create, :show]
  # resources :farmers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
