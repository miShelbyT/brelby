Rails.application.routes.draw do
  resources :wine_shops, only: [:show]
  resources :bakeries, only: [:show]
  resources :cupcakes
  resources :wines
	resources :orders
	resources :customers
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
