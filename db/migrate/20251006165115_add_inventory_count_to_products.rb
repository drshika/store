class AddInventoryCountToProducts < ActiveRecord::Migration[8.0]
  def change
    unless column_exists?(:products, :inventory_count)
      add_column :products, :inventory_count, :integer
    end
  end
end
