Rails.application.routes.draw do
  # get 'posts/new'
  # get 'posts/create'
  # get 'posts/index'
  devise_for :users
  resources :posts, only: [:new, :create, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
