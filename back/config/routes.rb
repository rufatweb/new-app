# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# post '/login' => 'sessions#create'
# delete '/logout' => 'sessions#destroy'
# resources :users
# get '/profile' => 'users#profile'
# resources :user_items
# resources :items
# end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/current_user', to: "auth#show"
      get '/profile', to: 'users#profile'
      resources :items, only: [:index, :show]
      resources :user_items
      patch 'user_items/:id', to: 'user_items#update'
      post '/user_items', to: 'user_items#create'
      delete 'user_items/:id', to: 'user_items#destroy'
    end
  end
end
