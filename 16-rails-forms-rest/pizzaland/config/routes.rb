Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :pizzas

  # get '/pizzas', to: 'pizzas#index'
  # get '/pizzas/:pizza_id', to: 'pizzas#single_pizza', as: 'pizza'
end
