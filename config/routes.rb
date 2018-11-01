Rails.application.routes.draw do
  resources :products
  resources :order_items, only: [:create, :update, :destroy]
  resource :cart, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    post 'authenticate', to: 'authentication#authenticate'
    post 'user', to: 'user#create'
    get 'user/:id', to: 'user#show'
    post 'purchase_item/add_to_cart/:id', to: 'purchase_item#add_to_cart'
end
