Rails.application.routes.draw do
  resources :blog_livros
  get 'home/index'
  root 'home#index'
  resources :posts
  get "/articles", to: "articles#index"
end
