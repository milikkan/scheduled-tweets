Rails.application.routes.draw do
	root to: 'main#index'

	get 'about', to: 'about#index'

	get 'signup', to: 'registrations#new'
	post 'signup', to: 'registrations#create'

	get 'signin', to: 'sessions#new'
	post 'signin', to: 'sessions#create'

	delete 'logout', to: 'sessions#destroy'

	get 'password', to: 'passwords#edit', as: :edit_password
	patch 'password', to: 'passwords#update'
end
