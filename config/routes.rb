Rails.application.routes.draw do
  resources :posts
  root 'pages#home', as: 'home'

  get 'about' => 'pages#about'
  resources :sessions
  resources :pages
  resources :users do
    resources :posts, controller: 'users/posts'
    resources :trades, controller: 'users/trades' 
  end

  post '/sessions/new' => 'sessions#create'
  get 'log_out' => "sessions#destroy" #видалення сесії кукіс (вихід з аккаунта)
end
