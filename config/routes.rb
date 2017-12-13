Rails.application.routes.draw do
  resources :order_products
  resources :orders
  resources :products
  resources :standing_orders
  resources :quantity_types
  resources :product_types
  resources :payment_types
  resources :users
  resources :companies


  # post 'authenticate', to: 'authentication#authenticate', as: 'auth'
end
