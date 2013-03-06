ParentToolbox::Application.routes.draw do
	root to: 'tools#index'
	
  get '/about' => 'tools#about'
	get '/home' => 'tools#index'
	get '/tools' => 'tools#tools'
	get '/signin' => 'tools#signin'
	
	resources :users
  resources :tools
	resources :categories
	
end