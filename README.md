* データベース設計
## users テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :group_users
- has_many :groups through: :group_users


## groups テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|organizer|string|null: true|

### Association
- has_many :group_users
- has_many :users through: :group_users


## group_users テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: true, foreign_key: true|
|group_id|references|null: true, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group