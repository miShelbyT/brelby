Rails.application.routes.draw do
  resources :wine_shops, only: [:show]
  resources :bakeries, only: [:show]
  resources :cupcakes
  resources :wines
	resources :orders
	
	get '/customers', to: 'users#index', as: 'users'
	get '/customers/new', to: 'users#new', as: 'new_user'
	post '/customers', to: 'users#create'
	get '/customers/:id', to: 'users#show', as: 'user'
	get '/customers/:id/edit', to: 'users#edit', as: 'edit_user'
	patch '/customers/:id/', to: 'users#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
