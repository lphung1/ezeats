class AddInstructions < ActiveRecord::Migration
  def change
    add_column :foods, :instructions, :string
  end
end
