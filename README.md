# Matching Match

## 概要
・マッチングアプリのマッチングアプリ

## 制作背景
最近よく話題になっているマッチングアプリ！２０２０年5月の調査では国内最大級のマッチングアプリはおよそ１００万人に利用されているそうです。

しかし、いざマッチングアプリを調べてみるととにかく種類がたくさんあります。恋人、結婚相手などの目的から占いやメッセージなしで会うなどの出会い方、デートコースまで用意してくれるなどのマッチング後のサポートなどその人によって使いやすいアプリは変わってきます。

そこで、まずは人ではなく、マッチングアプリをマッチングする事でより良い出会いを応援しようと考え、作成するに至ります。

## 本番環境
https://fierce-retreat-50843.herokuapp.com/

## DEMO
### トップ画面
[![Image from Gyazo](https://i.gyazo.com/5e9421b7f5889666248987126d7978a8.png)](https://gyazo.com/5e9421b7f5889666248987126d7978a8)

### 新規登録画面

### アプリ紹介画面（コメント機能）

### 検索機能


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
