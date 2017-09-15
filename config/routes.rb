Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'
  post '/text', to: 'texter#text'
  get '/signup', to: 'users#new'
  resources :users
end
