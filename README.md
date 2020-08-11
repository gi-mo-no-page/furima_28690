# テーブル設計

## users テーブル

| Column           | Type   | Options                   |
| ---------------- | ------ | ------------------------- |
| nickname         | string | null:false                |
| first_name       | string | null:false                |
| family_name	     | string | null:false                |
| first_name_kana  | string | null:false                |
| family_name_kana | string | null:false                |
| email            | string | null:false , unique: true |
| password         | string | null:false                |

### Association
- has_many :items
- has_many :purchases
- has_many :selling_items, class_name: "items", foreign_key:     "seller_id", -> { where("buyer_id is NULL") }
- has_many :bought_items, class_name: "items", foreign_key: "buyer_id"
- has_many :sold_items, class_name: "items", foreign_key: "seller_id", -> { where("buyer_id is not NULL") }
- has_one :delivery_address, dependent: :destroy


## items

| Column           | Type       | Options                       |
| ---------------- | ---------- | ----------------------------- |
| img              | string     | null:false                    |
| name             | string     | null:false                    |
| introduction     | text       | null:false                    |
| category         | references | null:false, foreign_key: true | 
| status           | references | null:false, foreign_key: true |
| shipping_charges | references | null:false, foreign_key: true |
| shipping_region  | references | null:false, foreign_key: true |
| delivery_time    | references | null:false, foreign_key: true |
| price            | integer    | null:false                    |
| seller_id        | references | null:false, foreign_key: true |
| buyer_id         | references | foreign_key: true             |

### Association
- has_many :items
- belongs_to:user
- belongs_to :seller, class_name: "user", foreign_key: "seller_id"
- belongs_to :buyer, class_name: "user", foreign_key: "buyer_id"
- belongs_to_active_hash: category
- belongs_to_active_hash: status
- belongs_to_active_hash : shipping_charges
- belongs_to_active_hash : shipping_region
- belongs_to_active_hash : delivery_time


## purchases テーブル

| Column   | Type       | Options                       |
| -------- | ---------- | ----------------------------- |
| user_id  | references | null:false, foreign_key: true |
| item_id  | references | null:false, foreign_key: true |

- belongs_to:user
- belongs_to:item


## delivery_address テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| post_code     | integer    | null:false                     |
| prefectures   | references | null:false, foreign_key: true  |
| municipality  | string     | null:false                     |
| street_number | string     | null:false                     |
| building_name | string     |                                |
| phone_number  | integer    | null:false                     |
| user          | references | null:false, foreign_key: true  |

### Association
- belongs_to:user
- belongs_to_active_hash : prefectures
