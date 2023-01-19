Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'blog#index'
  get 'index' => 'blog#index', as:'blog'
  get 'show/:id' => 'blog#show', as:'blogs'
end
