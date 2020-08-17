class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name                     , null:false
      t.text :introduction               , null:false
      t.integer :category_id                , null:false
      t.integer :status_id                  , null:false
      t.integer :shopping_charges_id        , null:false
      t.integer :shopping_region_id         , null:false
      t.integer :delivery_time_id           , null:false
      t.integer :price                   , null:false
      t.integer :user_id                 , null:false, foreigh_key:true

      t.timestamps
    end
  end
end
