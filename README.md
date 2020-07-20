# DB設計

## usersテーブル
| Column | Type | Options |
|---------|------| -------- |
| email | string | null :  false|
| password | string | null :  false |
| username | string | null :  false |
### Association
-  has_many  : groups
-  has_many  : messages

## groupsテーブル
| Column | Type | Options |
| -------- | ----- | -------- |
| groupname |string | null :  false |
| user_id | integer | null :  false ,  foreign_key :  true |
### Association
-  belongs_to  : user
-  has_many  : groups_massages
-  has_many  : massages ,  through :   : groups_messages

## messageテーブル
| Column | Type | Options |
| -------- | ----- | -------- |
| body | text | null :  false |
| image | string | null :  false |
| user_id | integer | null :  false ,  foreign_key :  true|
### Association
-  belongs_to  : user
-  has_many  : groups_massages
-  has_many  : groups ,  through :   : groups_messages

## groups_messageテーブル
| Column | Type | Options |
| -------- | ----- | -------- |
| group_id | integer | null: false, foreign_key: true|
|message_id | integer |  null: false, foreign_key: true |
### Association
-  belongs_to  : group
-  belongs_to  : message
