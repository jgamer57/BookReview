Rails.application.routes.draw do
  mount RailsAdmin::Engine => '//admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
  	resources :reviews
  end
  get '/twitter', to: 'pages#twitterfeed'
  resources :users
  root 'books#index'
end
