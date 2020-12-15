# README

# テーブル設計

## users テーブル

| Column               | Type    | Options     |
| -------------------- | ------- | ----------- |
| user_type_id         | integer | null: false |
| email                | string  | null: false |
| encrypted_password   | string  | null: false |
| nickname             | date    | null: false |
| last_name            | string  | null: false |
| first_name           | string  | null: false |
| last_name_kana       | string  | null: false |
| first_name_kana      | string  | null: false |
| birthday             | date    | null: false |
| income_id            | integer |             |

### Association

- has_many :demands
- has_one :profile

## demands テーブル

| Column              | Type            | Options                        |
| ------------------- | --------------- | ------------------------------ |
| deal_type_id        | integer         | null: false                    |
| train_line          | string          |                                |
| station_distance_id | integer         |                                |
| area_id             | integer         |                                |
| size_id             | integer         |                                |
| budget_id           | integer         |                                |
| condition_id        | integer         |                                |
| priority_id         | integer         |                                |
| details             | text            |                                |
| user                | references      | null: false, foreign_key: true |

### Association

- belongs_to :user

## profiles テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| company_name      | string     |                                |
| company_location  | string     |                                |
| info              | text       |                                |
| user              | references | null: false, foreign_key: true |


### Association

- belongs_to :user