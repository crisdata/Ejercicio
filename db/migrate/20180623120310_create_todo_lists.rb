class CreateTodoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_lists do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
