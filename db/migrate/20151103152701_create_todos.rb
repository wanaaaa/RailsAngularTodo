class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description, null: true
      t.string :done, null: true

      t.timestamps null: false
    end
  end
end
