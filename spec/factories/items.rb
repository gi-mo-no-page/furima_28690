FactoryBot.define do
  factory :item do
    name                   { '写真' }
    introduction           { '写真です' }
    category_id            { '2' }
    status_id              { '2' }
    shopping_charges_id    { '1' }
    shopping_region_id     { '1' }
    price                  { '10000' }
    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('spec/images/test.jpg'), filename: 'test.jpg', content_type: 'image/jpg')
    end
  end
end
