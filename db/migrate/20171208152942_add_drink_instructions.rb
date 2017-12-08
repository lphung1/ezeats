class AddDrinkInstructions < ActiveRecord::Migration
  def change
    add_column :drinks, :d_instructions, :string
  end
end
