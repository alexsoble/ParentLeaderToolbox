ParentToolbox::Application.routes.draw do
	root to: 'pages#home'
	
	get 'home' => 'pages#home'
  get '/about' => 'pages#about'
	
	get '/tools' => 'tools#index'
	get '/signin' => 'sessions#new'
	
	post 'sessions/create' => 'sessions#create', as: :create_session
	get '/signup' => 'users#new'
	get '/signout' => 'sessions#destroy', as: :signout

	resources :users
  resources :tools
	resources :categories
	
end