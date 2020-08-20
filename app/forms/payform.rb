class Payform 
  include ActiveModel::Model
  attr_accessor :item_id, :user_id, :token, :post_code, :prefectures_id, :municipality, :street_number, :building_name, :phone_number, :purchase_id

  with_options presence: true do
    validates :token
    validates :post_code, format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :prefectures_id, numericality: { other_than: 0 }
    validates :municipality
    validates :street_number
    validates :phone_number, format: {with: /\A(0{1}\d{10})\z/}
    validates :user_id
    validates :item_id
  end

  def save
      purchase = Purchase.create(
      user_id: user_id,
      item_id: item_id
    )

     Address.create(
      post_code: post_code,
      prefectures_id: prefectures_id,
      municipality: municipality,
      street_number: street_number,
      building_name: building_name,
      phone_number: phone_number,
      purchase_id: purchase.id
    )
  end
end