# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
parents = ["レディース", "メンズ", "ベビー・キッズ", "インテリア・住まい・小物", "本・音楽・ゲーム",
  "おもちゃ・ホビー・グッズ",  "家電・スマホ・カメラ", "スポーツ・レジャー","ハンドメイド" ,"その他"]

  parents.each do |parent|
    Type.create(name: parent)
  end