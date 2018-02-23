Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
  resources :categories
=begin 
 	get "/category" index
 	post "/category" create
 	delete "/category/:id" destroy
 	put "/category/:id" update
=end
root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
