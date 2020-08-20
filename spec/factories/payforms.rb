FactoryBot.define do
  factory :payform do
    token
    post_code
    prefectures_id
    municipality
    street_number
    phone_number
    user_id
    item_id
  end
end
