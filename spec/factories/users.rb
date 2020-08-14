FactoryBot.define do
  factory :user do
    nickname              {"yamada"}
    email                 {"aaaaaaa@gmail.com"}
    password              {"123yamada"}
    password_confirmation {password}
    first_name            {"山田"}
    family_name           {"太郎"}
    first_name_kana       {"ヤマダ"}
    family_name_kana      {"タロウ"}
    birth_date            {"1980-1-1"}
  end
end