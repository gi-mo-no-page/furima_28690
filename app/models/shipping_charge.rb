class ShippingCharge < ActiveHash::Base
  self.data = [
    { id: 1, shipping_charges: '着払い(購入者負担)' },
    { id: 2, shipping_charges: '送料込み(出品者負担)' }
  ]
end
