ParentToolbox::Application.routes.draw do
	root to: 'tools#index'
	
	resources :users
	resources :tools
	resources :categories
	
end
