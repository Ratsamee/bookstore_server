Rails.application.routes.draw do
  resources :order_details
  resources :orders
  resources :users
end
