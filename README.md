# アプリ名

自分で登記推進委員会


# 概要

本アプリでは、一問一答形式で抵当権抹消登記手続きで使用する登記申請書を  
完成させることができます。

- 要件定義書
    - https://docs.google.com/spreadsheets/d/12FluphAjfRMJKf8RY0UH2ljYpTkeHikVzJkDZ0GIRPA/edit#gid=297255682  

- Githubリポジトリ
    - https://github.com/tatsuyasaga/teitouken_masshou  


# 本番環境

https://teitouken-masshou.herokuapp.com/

- basic認証のID/Pass
    - ID:admin
    - Pass:2222
- テスト用アカウント
    - メールアドレス: test@test
    - パスワード: saga2497  


# 制作背景（意図）

住宅ローンを組んで自宅を購入する場合は、融資をする金融機関がその土地と  
建物を住宅ローンの担保（抵当権）として法務局に登記するのが一般的です。  
そして、住宅ローンを完済した後、金融機関は完済したことを証明する書類を  
顧客に渡して抵当権の登記を抹消する抵当権抹消登記を行うことを促します。  

抵当権抹消手続きは、金融機関から司法書士を紹介されて依頼することなるのが  
多いですが、専門的な知識がそれほどなくてもできる手続きなので、  
やる気があれば自分ですることもできます（実際に自分で手続きを  
済ませている方も見受けられます）。  

自分で手続きを完了させることができれば、司法書士に支払う１、２万円ほどの  
報酬を節約できますので、私の今までの経験を生かして皆様の家計に少しでも  
助力できればと思い本アプリを制作しました。  


# DEMO

## トップページ（メニュー画面）

[![Image from Gyazo](https://i.gyazo.com/bb0b0e29524fdfbe0c44761a3d7c186d.gif)](https://gyazo.com/bb0b0e29524fdfbe0c44761a3d7c186d)
本アプリを使用するにあたっては、ユーザーの新規登録が必要です。  
登録後は、画面左にある本アプリで支援できる手続一覧から手続きを  
選択してのリンク先に遷移できるようになります。  
フッターには、運営者情報と問合せ先を確認できるページへの  
リンクがあります。  

## ユーザー新規登録

[![Image from Gyazo](https://i.gyazo.com/f1266f6a397d5ff30b71ec34ce8fc08b.gif)](https://gyazo.com/f1266f6a397d5ff30b71ec34ce8fc08b)
ここで入力された内容は登記申請書に反映されるように設定してます。  

## 登記申請内容Q&Aページ

[![Image from Gyazo](https://i.gyazo.com/b24db0ef90adedba095504b19b800baf.gif)](https://gyazo.com/b24db0ef90adedba095504b19b800baf)  
[![Image from Gyazo](https://i.gyazo.com/dee53d33bb08d65e8c209dcfa108644c.gif)](https://gyazo.com/dee53d33bb08d65e8c209dcfa108644c)
登記申請書の内容を埋めるための質問事項一覧があり指示にしたがって  
入力を完成させると内容が反映された登記申請書ページに遷移します。  

## 登記申請書ページ

[![Image from Gyazo](https://i.gyazo.com/51827e3301fc5f8c22093bfce1bd50e6.gif)](https://gyazo.com/51827e3301fc5f8c22093bfce1bd50e6)
法務局で使用される様式に合わせてますので、印刷して氏名の横に  
認印を押印すると法務局で受付される登記申請書が完成します。  


# 工夫したポイント

- 一問一答形式にして登記申請書の内容を入力しやすいように  
  しました。
- 質問内容をわかりやすくして誤回答が減るようにしました。  
- 登記申請書を印刷して押印するだけでそのまま法務局で  
  受け付けられる様式にしてユーザーの利便性を考慮しました。  


# 使用技術（開発環境）

## バックエンド

Ruby, Ruby on Rails

## フロントエンド

JavaScript, Ajax

## データベース

MYSQL, SequelPro

## インフラ

なし

## Webサーバ

Nginx

## アプリケーションサーバ

unicorn

## ソース管理

GitHub, GitHubDesktop

## テスト

RSpec

## エディタ

VSCode

# 課題や今後実装したい機能

要件定義が不十分で途中で修正や変更が生じて混乱することがあったため、  
今後は要件定義をより細かく作り込んで計画通りに作業を進めることができる  
ようにする必要があると感じました。ソース管理においては、GitHubに  
コミットする作業単位のルールができてなかったため履歴がわかりにくいものに  
なってしまったため客観的に作業の進捗が把握できるようにすることを  
意識する必要があると感じました。  

今後知識や経験が増えたら下記の機能を追加していきたいと考えてます。  
- 抵当権抹消登記以外の登記手続きの追加  
- ユーザーの入力作業を省くために選択肢形式や郵便番号により住所を自動入力する機能  
- 本アプリについてユーザーがレビューする機能  
- 一問一答の回答中に作業を中断するときにその内容を保存する機能  
- ユーザー同士で情報交換ができる掲示板機能  
- 回答内容の添削機能  


# DB設計

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
| number                | bigint  | null: false                    |
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