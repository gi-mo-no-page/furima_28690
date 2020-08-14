class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name                     , null:false
      t.text :introduction               , null:false
      t.integer :category                , null:false, foreigh_key:true
      t.integer :status                  , null:false, foreigh_key:true
      t.integer :shipping_charges        , null:false, foreigh_key:true
      t.integer :shipping_region         , null:false, foreigh_key:true
      t.integer :delivery_time           , null:false, foreigh_key:true
      t.integer :price                   , null:false
      t.integer :user_id                 , null:false, foreigh_key:true

      t.timestamps
    end
  end
end
