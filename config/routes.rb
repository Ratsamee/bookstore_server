Rails.application.routes.draw do
  scope '/api' do
    post 'user_token' => 'user_token#create'
    resources :order_details
    resources :orders
    get '/users/current.json' => 'users#fetch_current_user'
    resources :users
  end
  
end
