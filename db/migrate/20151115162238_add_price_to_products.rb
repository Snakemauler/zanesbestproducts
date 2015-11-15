class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :products, :string
  end
end
