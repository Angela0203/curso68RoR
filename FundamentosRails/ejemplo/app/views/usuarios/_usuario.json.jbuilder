json.extract! usuario, :id, :name, :apellido, :edad, :contrasena, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
