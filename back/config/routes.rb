Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
  resources :users, only: [:create, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  resources :items, only: [:index, :create, :update, :destroy]
end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
