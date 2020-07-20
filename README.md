# DB設計

## usersテーブル
| Column | Type | Options |
|---------|------| -------- |
| email | string | null :  false|
| password | string | null :  false |
| name | string | null :  false |

### Association
-  has_many : messages
-  has_many  : groups_users
-  has_many  : groups ,  throught :   : groups_users

## groupsテーブル
| Column | Type | Options |
| -------- | ----- | -------- |
| name | string | null :  false |
### Association
-  has_many  : massages
-  has_many  : groups_users
-  has_many  : users ,  through :   : groups_users

## messagesテーブル
| Column | Type | Options |
| -------- | ----- | -------- |
| body | text ||
| image | string ||
| user_id | integer | null :  false ,  foreign_key :  true |
| group_id |integer | null :  false ,  foreign_key :  true |
### Association
-  belongs_to  : user
-  belongs_to  : group

## groups_usersテーブル
| Column | Type | Options |
| -------- | ----- | -------- |
| group_id | integer | テキスト, 画像は単体で投稿, foreign_key: true|
| user_id | integer |  null: false, foreign_key: true |
### Association
-  belongs_to  : group
-  belongs_to  : user
