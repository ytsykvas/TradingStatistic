Rails.application.routes.draw do
  root 'pages#home', as: 'home'

  get 'about' => 'pages#about'
  get 'home' => 'pages#home'
  
  resources :users
  get 'signup' => 'users#new'
  get 'create' => 'users#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
