class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  has_one_attached :image
  belongs_to :user

  validates :category, presence: true
  validates :category_id, numericality: { other_than: 1 } 
end
