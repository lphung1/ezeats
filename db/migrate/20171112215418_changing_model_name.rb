class ChangingModelName < ActiveRecord::Migration
  def change
    rename_table :recipes, :food
  end
end
