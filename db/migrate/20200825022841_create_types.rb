class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :name         ,null:false
      t.integer :item_id     ,null:false
      t.timestamps
    end
  end
end
