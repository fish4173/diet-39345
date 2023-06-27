# アプリケーション名
  Diet-Diet Calculation

# アプリケーション概要
  年令、身長、体重、性別から基礎代謝を計算し、摂取カロリーと運動量を入力することで当日の体重増減を出力する。

# URL
  https://diet-39345.onrender.com

# テスト用アカウント
  Basic認証パスワード : 2222

  Basic認証ID  : admin

  メールアドレス : taro.test@gmail.com

  パスワード : test1234

# 利用方法
  1.ログイン画面から新規登録ボタンをクリックし、アカウントを作成
  2.各摂取カロリーと運動量を入力
  3.入力完了後、登録ボタンをクリックすると体重増減の結果が表示される。


# アプリケーションを作成した背景
  ダイエットに興味があり過去にダイエットをした人に聞くと、継続が難しいという課題を抱えていることが判明した。課題を分析した結果、毎日どれだけ痩せたか判断ができないため継続が難しいと仮説を立てた。そのため、日々の基礎代謝と摂取カロリー運動量から何キロ痩せたか確認出来るアプリケーションを開発した。

# 洗い出した要件
  https://docs.google.com/spreadsheets/d/1Krxwk8-ZMbQ_VCNQ_EXB1b1AJfwGhJdg6arCEGgS3pY/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明
  ①アカウント登録 or ログイン　※下記画像はアカウント登録画面

  [![Image from Gyazo](https://i.gyazo.com/66b285e0a6172b53dcd4ac2198796b97.png)](https://gyazo.com/66b285e0a6172b53dcd4ac2198796b97)


  ②各項目を入力後、登録or上書きボタンをクリック

  ※体重の増減により画像が変化し、画像下部に総カロリーと体重増減結果が表示される。
  [![Image from Gyazo](https://i.gyazo.com/3175a85898eace73a2bc5ac1df8c9d74.png)](https://gyazo.com/3175a85898eace73a2bc5ac1df8c9d74)



# 実装予定の機能
  現在、マイページ機能を実装中


# データベース設計
  [![Image from Gyazo](https://i.gyazo.com/2c6203c4175bf1134ca7d6cc5c02d959.png)](https://gyazo.com/2c6203c4175bf1134ca7d6cc5c02d959)

# 画面遷移図
  [![Image from Gyazo](https://i.gyazo.com/a7a82c577ad50be69e996d39b02ae013.png)](https://gyazo.com/a7a82c577ad50be69e996d39b02ae013)


# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false,              |
| email              | string              | null: false,unique: true  |
| password           | string              | null: false               |
| height             | decimal              | null: false               |
| weight             | decimal              | null: false               |
| age                | integer              | null: false               |
| sex                | integer              | null: false               |



### Association

* has_many :diets


## diets table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| breakfast-cal                       | integer    | null: false                    |
| lunch-cal                           | integer    | null: false                    |
| dinner-cal                          | integer    | null: false                    |
| snack-cal                           | integer    | null: false                    |
| motion-cal                          | integer    | null: false                    |
| date                                | integer    | null: false                    |
| metabo                              | integer    | null: false                    |
| total-cal                           | integer    | null: false                    |
| total-kg                            | decimal    | null: false                    |
| user                                | references | null: false, foreign_key: true |

### Association

- belongs_to :user

