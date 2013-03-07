ParentToolbox::Application.routes.draw do
	root to: 'tools#index'
	
  get '/about' => 'tools#about'
	get '/home' => 'tools#index'
	get '/tools' => 'tools#tools'
	get '/signin' => 'sessions#new'
	post 'sessions/create' => 'sessions#create', as: :create_session
	get '/signup' => 'users#new'
	get '/signout' => 'sessions#destroy', as: :signout

	
	resources :users
  resources :tools
	resources :categories
	
end