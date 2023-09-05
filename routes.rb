Rails.application.routes.draw
  resources :users

  # O recurso sempre deve ser no plural
  # resources :users já criar rotas para todo CRUD

  get '/users', to 'users#index'

  # Rotas escritas na mão
end