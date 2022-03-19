Rails.application.routes.draw do

devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end

devise_for :users, controllers: { registrations: "registrations" }

root 'home#index'
get 'dashboard', to: 'home#dashboard'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
