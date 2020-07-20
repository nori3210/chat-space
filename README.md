# DB設計

## usersテーブル
| Column | Type | Options |
|---------|------| -------- |
| email | string | null :  false|
| password | string | null :  false |
| name | string | null :  false |
| group_id | string | null :   false |

### Association
-  has_many : messages
-  has_many  : groups_users
-  has_many  : groups ,  throught :   : groups_users

## groupsテーブル
| Column | Type | Options |
| -------- | ----- | -------- |
| name | string | null :  false |
| user_id | integer | null :  false ,  foreign_key :  true |
### Association
-  belongs_to  : massages
-  has_many  : groups_users
-  has_many  : users ,  through :   : groups_users

## messagesテーブル
| Column | Type | Options |
| -------- | ----- | -------- |
| body | text | null :  false |
| image | string | null :  false |
| user_id | integer | null :  false ,  foreign_key :  true |
| group_id |integer | null :  false ,  foreign_key :  true |
### Association
-  belongs_to  : user
-  belongs_to  : group

## groups_usersテーブル
| Column | Type | Options |
| -------- | ----- | -------- |
| group_id | integer | null: false, foreign_key: true|
| user_id | integer |  null: false, foreign_key: true |
### Association
-  belongs_to  : group
-  belongs_to  : user
