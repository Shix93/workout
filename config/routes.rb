Rails.application.routes.draw do
  
  devise_for :users 
  root 'dashboards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
		resources :exercises
	end  
end
