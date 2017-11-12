class FixTypo < ActiveRecord::Migration
  def change
    rename_column :foods, :ingrediest, :ingredients
  end
end
