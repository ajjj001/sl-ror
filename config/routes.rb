Rails.application.routes.draw do
  resources :shops

  get '/users/count' => 'users#count'
  get '/users/:id/name' => 'users#name'
  
  # resources :users

  resources :users, defaults: { format: :json }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
