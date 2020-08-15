class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :shopping_charge
  belongs_to_active_hash :shopping_region
  belongs_to_active_hash :delivery_time

  has_one_attached :image
  belongs_to :user

  validates :category, presence: true
  validates :category_id, numericality: { other_than: 1 } 
end
