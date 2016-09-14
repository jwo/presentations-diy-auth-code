Rails.application.routes.draw do

  root 'dashboard#show'

  get 'products' => 'products#index', as: :products
  get 'products/:id' => 'products#show', as: :product

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :sign_out


  namespace :api do
    get 'products' => 'products#index', as: :products
    get 'products/:id' => 'products#show', as: :product
  end

end
