Rails.application.routes.draw do
  resources :comments
  resources :likes
  resources :pokemons
  resources :users

  root_path 'pokemon#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
