class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :apellido
      t.integer :edad
      t.string :contrasena

      t.timestamps
    end
  end
end
