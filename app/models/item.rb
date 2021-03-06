class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_one :purchase
  belongs_to :user
  has_one_attached :image
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :shopping_charges
  belongs_to_active_hash :shopping_region
  belongs_to_active_hash :delivery_time

  with_options presence: true do
    validates :image
    validates :name
    validates :introduction
    validates :category_id
    validates :status_id
    validates :shopping_charges_id
    validates :shopping_region_id
    validates :delivery_time_id
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  end

  def self.search(search)
    if search != ''
      Item.where('name LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
end
