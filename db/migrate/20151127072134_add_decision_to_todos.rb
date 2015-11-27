class AddDecisionToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :decision, :string
  end
end
