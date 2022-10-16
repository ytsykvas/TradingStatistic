Rails.application.routes.draw do
  root 'pages#home', as: 'home'
  resources :news
  
  resources :sessions
  resources :pages
  resources :posts

  resources :users do
    resources :posts, controller: 'users/posts'
    resources :trades, controller: 'users/trades'
  end

  get 'about' => 'pages#about'
  get 'log_out' => "sessions#destroy"

  post '/search' => "news#search"
end
