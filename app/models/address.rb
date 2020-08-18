class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :purchase
  belongs_to_active_hash :prefectures

  with_options presence: true do
    validates :post_code, format: {with: /\A\d{3}[-]\d{4}\z/}
    validates :prefectures_id
    validates :municipality
    validates :street_number
    validates :phone_number, format: {with: /^(0{1}\d{9,10})$/}
  end
 
end
