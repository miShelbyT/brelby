Rails.application.routes.draw do
  get 'welcome/index'
  resources :wine_shops, only: [:index]
  resources :bakeries, only: [:index]
  resources :cupcakes
  resources :wines
	resources :orders
	resources :customers

  post '/orders/:id', to: 'orders#edit'
  root to: 'welcome#home'
  
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
