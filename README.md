# Matching Match

## 概要
・マッチングアプリのマッチングアプリ

人ではなく、方法に着目した、出会い『方』をマッチングするアプリです。

## 制作背景
最近よく話題になっているマッチングアプリ！２０２０年5月の調査では国内最大級のマッチングアプリはおよそ１００万人に利用されているそうです。

しかし、いざマッチングアプリを調べてみるととにかく種類がたくさんあります。恋人、結婚相手などの目的から占いやメッセージなしで会うなどの方法、デートコースまで用意してくれるなどのマッチング後のサポートなどその人によって使いやすいアプリは変わってきます。

そこで、まずは人ではなく、マッチングアプリをマッチングする事でより良い出会いを応援しようと考え、作成するに至ります。

## 本番環境
https://fierce-retreat-50843.herokuapp.com/

## DEMO
### トップ画面
[![Image from Gyazo](https://i.gyazo.com/5e9421b7f5889666248987126d7978a8.png)](https://gyazo.com/5e9421b7f5889666248987126d7978a8)

### 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/d3d2ca9d370407f3c1f8fb7509918cf4.png)](https://gyazo.com/d3d2ca9d370407f3c1f8fb7509918cf4)

### アプリ投稿画面
[![Image from Gyazo](https://i.gyazo.com/5077c30865d880e8bd665e3525963114.png)](https://gyazo.com/5077c30865d880e8bd665e3525963114)

### アプリ紹介画面（コメント機能）
[![Image from Gyazo](https://i.gyazo.com/4e8d3425018d1c3ae658e11dc63a1eb1.gif)](https://gyazo.com/4e8d3425018d1c3ae658e11dc63a1eb1)

### 検索機能

## 工夫したポイント
・検索した際にどのようなアプリなのか分かりやすいように一言PRを採用した点

・新たな出会いがありそうなデザイン

## 使用技術（開発環境）
### バックエンド
・Ruby

・Ruby on Rails

### フロントエンド
・HTML

・CSS

・JavaScript

・JQuery

### 開発環境
・VScode

## 課題や今後実装したい機能
・マッチング機能の乏しさ

→gem 'ransack'を使用したより充実した検索機能

・いいね機能

→いいね機能を実装し、マイページで確認できるようにする

・本アプリからマッチングしたアプリへの移行

→今は架空のアプリであるため、実装できていないが、直接appstoreに繋げる

・魅力を伝えきれていない紹介ページ

→画像投稿機能をつける


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
