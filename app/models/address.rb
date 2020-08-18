class Address < ApplicationRecord
  belongs_to :purchase
  belongs_to_active_hash :prefectures
end
