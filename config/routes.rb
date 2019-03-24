Rails.application.routes.draw do
  resources :personas, except: [:show, :new]
  resources :proyectos, except: [:show, :new]
  

  delete 'asignacions/:persona_id/:proyecto_id', to: 'asignacions#destroy', as: 'asignacion_del'
  post 'asignacions/:persona_id', to: 'asignacions#create', as:'asignacions'
  
  root 'personas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
