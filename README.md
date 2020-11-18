## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|e-mail|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :apps
- has_many :comments

## appsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|description|string|null: false|
|category_id|reference|foreign_key: true, null: false|
|user_id|integer|foreign_key: true, null: false|
### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|app_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :app
- belongs_to :user