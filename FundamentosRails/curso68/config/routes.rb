Rails.application.routes.draw do
  resources :direccions
  resources :mensajes
  resources :rols
  resources :usuarios
  resources :articulos
  resources :clientes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
