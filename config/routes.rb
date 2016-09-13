Rails.application.routes.draw do
  root 'dashboard#show'

  get 'products' => 'products#index', as: :products
  get 'products/:id' => 'products#show', as: :product

  namespace :api do
    get 'products' => 'products#index', as: :products
    get 'products/:id' => 'products#show', as: :product
  end

end
