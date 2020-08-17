class ShoppingCharges < ActiveHash::Base
  self.data = [
    { id: 1, shopping_charges: "着払い(購入者負担)"}, 
    { id: 2, shopping_charges: "送料込み(出品者負担)"}
  ]
end
