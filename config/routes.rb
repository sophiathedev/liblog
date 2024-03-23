Rails.application.routes.draw do
  get 'post/new', to: "post#new", as: :new_posts
  post 'post/new', to: "post#create", as: :posts
  get 'posts/', to: "post#index", as: :all_post
  get 'post/:id', to: "post#show", as: :detail_post

  devise_for :users, skip: [:passwords]
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
