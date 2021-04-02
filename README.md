# テーブル設計

## users テーブル

| Column       | Type   | Options                  |
| ------------ | ------ | ------------------------ |
| nickname     | string | null: false              |
| name         | string | null: false              |
| postal_code  | string | null: false              |
| address      | string | null: false              |
| phone_number | string | null: false              |
| email        | string | null: false unique: true |
| password     | string | null: false              |

### Association

- has_many :application_data
- has_many :chats

## chats テーブル

| Column            | Type    | Options                        |
| ----------------- | ------- | ------------------------------ |
| procedure_name_id | integer | null: false                    |
| comment           | text    | null: false                    |
| evaluation_id     | integer | null: false                    |
| user_id           | integer | null: false, foreign_key: true |

- belongs_to :user

## application_data テーブル

| Column           | Type    | Options                        |
| ---------------- | ------- | ------------------------------ |
| reason_date      | date    | null: false                    |
| reason           | string  | null: false                    |
| receipt_number   | string  | null: false                    |
| catalog_number   | string  |                                |
| application_date | date    |                                |
| destination_id   | integer | null: false                    |
| tax              | integer | null: false                    |
| user_id          | integer | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_many :other_parties
- has_many :lands
- has_many :buildings

## other_party テーブル

| Column                | Type    | Options                        |
| --------------------- | ------- | ------------------------------ |
| address               | string  | null: false                    |
| name                  | string  | null: false                    |
| ceo                   | string  | null: false                    |
| number                | integer | null: false                    |
| application_datum_id  | integer | null: false, foreign_key: true |


### Association

- belongs_to :application_datum

## lands テーブル

| Column                | Type    | Options                        |
| --------------------- | ------- | ------------------------------ |
| prefecture_id         | integer | null: false                    |
| city                  | string  | null: false                    |
| number                | integer | null: false                    |
| branch_number         | integer |                                |
| type_id               | integer | null: false                    |
| acreage               | text    | null: false                    |
| application_datum_id  | integer | null: false, foreign_key: true |


### Association

- belongs_to :application_datum

## buildings テーブル

| Column                | Type    | Options                        |
| --------------------- | ------- | ------------------------------ |
| prefecture_id         | integer | null: false                    |
| city                  | string  | null: false                    |
| number                | integer | null: false                    |
| branch_number         | integer |                                |
| use_id                | integer | null: false                    |
| construction          | string  | null: false                    |
| floor_space           | text    | null: false                    |
| application_datum_id  | integer | null: false, foreign_key: true |


### Association

- belongs_to :application_datum