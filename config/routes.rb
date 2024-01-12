Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v0 do 
      resources :itemshop, only: [:index]
      get '/item_shop', to: 'item_shop#index'
    end
  end
end