Rails.application.routes.draw do

  root "items#index"
  resources :items
  resources :carts
  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
