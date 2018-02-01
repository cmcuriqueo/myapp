Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  	resources :users

	get 'welcome/index'

	resources :articles do
		resources :comments
	end
    get  '/signup',  to: 'users#new'
    post '/signup',  to: 'users#create'

    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'

	root 'welcome#index'
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
