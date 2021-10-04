Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :members
#get '/members/sign_out' => 'devise/sessions#destroy'
  get 'homes/index'

   root  "workouts#index"
	resources :workouts do 
		resources :exercises 
	end 
	get 'search' ,to: 'workouts#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
