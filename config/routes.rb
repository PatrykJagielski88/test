Rails.application.routes.draw do
  get 'production_companies/index'
  get 'production_companies/show'
  get 'movies/index'
  get 'movies/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, only: %i[index show]
  resources :production_companies, only: %i[index show]
end
