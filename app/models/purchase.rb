class Purchase < ApplicationRecord
  has_one :adress
  belongs_to :user
  belongs_to :item
end
