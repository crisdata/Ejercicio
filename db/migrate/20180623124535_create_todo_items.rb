class CreateTodoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_items do |t|
      t.string :contenido
      t.references :todo_list, index: true # Tengo duda llave principal

      t.timestamps
    end
  end
end
