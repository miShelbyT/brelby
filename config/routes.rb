Rails.application.routes.draw do
  resources :wine_shops, only: [:index]
  resources :bakeries, only: [:index]
  resources :cupcakes
  resources :wines
  resources :orders
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
