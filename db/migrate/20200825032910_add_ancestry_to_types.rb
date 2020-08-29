class AddAncestryToTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :types, :ancestry, :string
    add_index :types, :ancestry
  end
end
