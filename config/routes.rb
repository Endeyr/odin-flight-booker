Rails.application.routes.draw do
  resources :orders
  resources :passengers
  resources :bookings
  resources :airports
  resources :flights
  get 'find_order', :to => 'orders#find_order'
  post :create_order, :to => 'orders#create_order'
  post :capture_order, :to => 'orders#capture_order'
  mount Sidekiq::Web => "/sidekiq" if defined?(Sidekiq) # monitoring console
  root "flights#index"
end
