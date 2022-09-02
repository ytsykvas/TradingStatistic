Rails.application.routes.draw do
  root 'pages#home', as: 'home'

  get 'about' => 'pages#about'
  resources :sessions
  resources :pages
  resources :users do
    resources :trades
  end
  #get 'signup' => 'users#new'
  #get 'create' => 'users#create'


  post '/sessions/new' => 'sessions#create'
  #delete 'logout' => 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
