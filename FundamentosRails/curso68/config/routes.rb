Rails.application.routes.draw do
<<<<<<< HEAD
  resources :direccions
  resources :mensajes
  resources :rols
  resources :usuarios
  resources :articulos
  resources :clientes
=======
  get 'roles/index'
  get 'roles/new'
  get 'productos/index'
  get 'productos/new'
  get 'productos/index'
  get 'productos/edit'
  get 'productos/new'
  resources :direccions
  resources :mensajes
  resources :rols
  resources :roles
  resources :usuarios
  resources :articulos
  resources :clientes

  #get "productos" => "productos#index" #solo una ruta
  resources :productos

  #get '/index' , to 'index#home'
  
>>>>>>> f201a5d3f6b8a4187a0778375f13a6a45ae81782
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
