class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :post_code               ,null:false
      t.integer :prefectures            ,null:false
      t.string :municipality            ,null:false
      t.string :street_number           ,null:false
      t.string :building_name             
      t.string :phone_number            ,null:false
      t.integer :purchase_id            ,null:false, foreign_key: true
      t.timestamps
    end
  end
end
