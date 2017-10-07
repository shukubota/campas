Rails.application.routes.draw do
  get 'tagshow/index'

  devise_for :users
  #get 'pages/index'

  #get 'pages/show'

  resources :pages do
  	resources :comments do 
	end
  end




root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
