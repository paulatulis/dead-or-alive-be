Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :users, only: [:create, :index, :delete, :show, :update]

  post '/login', to: 'sessions#login'
  get '/init-state', to: 'sessions#initState'
end
