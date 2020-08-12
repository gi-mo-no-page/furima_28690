# テーブル設計

## users テーブル

| Column           | Type    | Options                   |
| ---------------- | ------  | ------------------------- |
| nickname         | string  | null:false                |
| first_name       | string  | null:false                |
| family_name	     | string  | null:false                |
| first_name_kana  | string  | null:false                |
| family_name_kana | string  | null:false                |
| email            | string  | null:false , unique: true |
| password         | string  | null:false                |
| birth_date       | integer | null:false                |


### Association
- has_many:items
- has_many:purchases


## items

| Column           | Type       | Options                       |
| ---------------- | ---------- | ----------------------------- |
| img              | string     | null:false                    |
| name             | string     | null:false                    |
| introduction     | text       | null:false                    |
| category         | integer    | null:false, foreign_key: true | 
| status           | integer    | null:false, foreign_key: true |
| shipping_charges | integer    | null:false, foreign_key: true |
| shipping_region  | integer    | null:false, foreign_key: true |
| delivery_time    | integer    | null:false, foreign_key: true |
| price            | integer    | null:false                    |
| user_id          | integer    | null:false, foreign_key: true |

### Association
- has_one: purchase
- belongs_to:user
- belongs_to_active_hash: category
- belongs_to_active_hash: status
- belongs_to_active_hash: shipping_charges
- belongs_to_active_hash: shipping_region
- belongs_to_active_hash: delivery_time


## purchases テーブル

| Column   | Type     | Options                       |
| -------- | -------- | ----------------------------- |
| user_id  | integer  | null:false, foreign_key: true |
| item_id  | integer  | null:false, foreign_key: true |

### Association
- belongs_to: user
- belongs_to: item
- has_one: delivery_address

## delivery_address テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| post_code     | string     | null:false                     |
| prefectures   | integer    | null:false, foreign_key: true  |
| municipality  | string     | null:false                     |
| street_number | string     | null:false                     |
| building_name | string     |                                |
| phone_number  | string     | null:false                     |

### Association
- belongs_to: purchase
- belongs_to_active_hash : prefectures
