Rails.application.routes.draw do

  root "items#index"
  resources :items
  post '/carts/:id', to: 'carts#update'
  resources :carts
  resources :orders
  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
