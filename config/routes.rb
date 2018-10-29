Rails.application.routes.draw do
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    post 'authenticate', to: 'authentication#authenticate'
    post 'user', to: 'user#create'
    get 'user/:id', to: 'user#show'
end
