Rails.application.routes.draw do

  root to: 'home#index'

  post 'users/create', as: 'create_user'

  resources :users

  get '/receive_yo' => 'users#receive_yo'

end
