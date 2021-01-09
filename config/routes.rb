Rails.application.routes.draw do
  resources :configs
  get 'recipe_ingredient_join/create'
  get 'recipe_ingredient_join/destroy'
  resources :recipes
  root  'static_pages#home'
  resources :ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
