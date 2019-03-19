Rails.application.routes.draw do
  resources :personas, only: [:index]
  resources :proyectos, only: [:index]
  root 'personas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
