Rails.application.routes.draw do
  resources :comments
  resources :likes
  resources :pokemons
  resources :users



  post '/login' => 'sessions#login', as: :login

    root 'pokemons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
