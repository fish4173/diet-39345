# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false,              |
| email              | string              | null: false,unique: true  |
| password           | string              | null: false               |
| height             | integer              | null: false               |
| weight             | integer              | null: false               |
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
| user                                | references | null: false, foreign_key: true |

### Association

- belongs_to :user

