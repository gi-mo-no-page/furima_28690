class DeliveryTime < ActiveHash::Base
  self.data = [
    { id: 1, delivery_time: '1~2日で発送' },
    { id: 2, delivery_time: '2~3日で発送' },
    { id: 3, delivery_time: '4~7日で発送' }
  ]
end
