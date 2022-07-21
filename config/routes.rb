Rails.application.routes.draw do
  resources :orders
  resources :bookings, only: [:new, :create, :show, :index] do
    get 'search', on: :collection
  end
  resources :airports
  resources :flights, only: :index
  get 'find_order', :to => 'orders#find_order'
  post :create_order, :to => 'orders#create_order'
  post :capture_order, :to => 'orders#capture_order'
  mount Sidekiq::Web => "/sidekiq" if defined?(Sidekiq) # monitoring console
  root "flights#index"
end
