Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/dashboard', to: 'posts#new'
  resources :posts
  #get new_post_path
  #get 'posts/new', as: 'dashboard'
end
