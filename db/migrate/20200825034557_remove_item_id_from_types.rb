class RemoveItemIdFromTypes < ActiveRecord::Migration[6.0]
  def change
    remove_column :types, :item_id, :integer
  end
end
