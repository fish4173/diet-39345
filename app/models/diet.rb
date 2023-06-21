class Diet < ApplicationRecord
  belongs_to :user

  validates :breakfast_cal, presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100000, message: '半角数字で入力してください' }

  validates :lunch_cal, presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100000, message: '半角数字で入力してください' }

  validates :dinner_cal, presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100000, message: '半角数字で入力してください' }

  validates :snack_cal, presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100000, message: '半角数字で入力してください' }

  validates :motion_cal, presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100000, message: '半角数字で入力してください' }

  validates :date, presence: true

  validates :metabo, presence: true

  validates :total_kg, presence: true

end
