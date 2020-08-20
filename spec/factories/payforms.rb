FactoryBot.define do
  factory :payform do
    token               { '0x00007ff8786dbde8' }
    post_code           { '123-4567' }
    prefectures_id      { '2' }
    municipality        { '沖繩' }
    street_number       { '1-1-1' }
    building_name       { 'オキナワ' }
    phone_number        { '09012345678' }
    user_id             { '3' }
    item_id             { '3' }
    purchase_id         { '1' }
  end
end
