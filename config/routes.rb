Rails.application.routes.draw do
  
  root to: 'welcome#splash'

  #users routes
  resources :users
  
   #sessions routes
  get "/sessions/new", to: "sessions#new", as: "sign_in"
  get "/sessions/logout", to: "sessions#destroy", as: "logout"
  post "/sessions", to: "sessions#create"

  get "/emotions", to: "emotions#index"
  get "/emotions/:id", to: "emotions#show"

  get "/drinks/:id", to: "drink#show"

  # config/routes.rb
	resources :drinks do
	  put :favorite, on: :member
	end

end
