Rails.application.routes.draw do
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
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
