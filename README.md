# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

```
## お客様テーブル
### アソシエーション
has_many :注文テーブル

カラム
name(string, notnull, 30文字まで, 一意性)
tell(integer, notnull, 30文字まで,一意性)
email(string, notnull, 30文字まで, 一意性)
adress(string, notnull, 100文字まで, 一意性)
password(integer, notnull, 8文字以上)
postnum(郵便)(integer, notnull)
cardnum(integer, notnull, 一意性)

## 注文テーブル
### アソシエーション
has_many 商品テーブル through 注文明細
has_many 注文詳細テーブル
belongs_to お客様テーブル
has_many 決済方法 through 注文決済テーブル
has_many 注文決済テーブル

カラム
注文数カラム(integer, notnull)
価格カラム(integer, notnull)

## 決済方法テーブル
### アソシエーション
has_many 注文テーブル through 注文決済テーブル
has_many 注文決済テーブル

カラム
決済方法カラム(string, notnull)

## 注文決済テーブル
### アソシエーション
belongs_to 注文テーブル
belongs_to 決済方法テーブル

注文_idカラム(references, notnull, foreign_key)
決済_idカラム(references, notnull, foreign_key)

## 注文明細テーブル
### アソシエーション
belongs_to 注文テーブル
belongs_to 商品テーブル

カラム
注文_idカラム(refereces, notnull, foreign_key)
商品_idカラム(refereces, notnull, foreign_key)

## 商品テーブル
### アソシエーション
has_many 注文詳細テーブル
has_many 注文テーブル through 注文詳細テーブル
has_many カテゴリーテーブル through 商品カテゴリーテーブル
has_many 商品カテゴリーテーブル
has_many 画像テーブル

カラム
商品名カラム(string, notnull, index)
発送日カラム(date, notnull)
商品説明カラム(text, notnull)
価格カラム(intger,notnull)
生産者の声カラム(text)

## 画像テーブル
### アソシエーション
belongs_to 商品テーブル

カラム
画像カラム(notnull)

## カテゴリーテーブル
### アソシエーション
has_many 商品テーブル through 商品カテゴリーテーブル
has_many 商品カテゴリーテーブル

カラム
カテゴリー名(string, notnull)

## 商品カテゴリーテーブル
### アソシエーション
belongs_to カテゴリーテーブル
belongs_to 商品テーブル

カラム
商品_idカラム(references, notnull, foreign_key)
カテゴリー_idカラム(references, notnull, foreign_key)



