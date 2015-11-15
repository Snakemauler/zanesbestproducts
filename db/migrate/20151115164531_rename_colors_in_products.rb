class RenameColorsInProducts < ActiveRecord::Migration
  def change
  	rename_column :products, :color, :price
  end
end
