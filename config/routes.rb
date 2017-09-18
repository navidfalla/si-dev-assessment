Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'
  post '/text', to: 'texters#text'
end
