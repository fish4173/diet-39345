class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  has_many :diets

  validates :nickname, presence: true

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'

  validates :height,presence: true,
  numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 300.0, message: 'は1から300.0までの半角数字で入力してください' }

  validates :weight,presence: true,
  numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 300.0, message: 'は1から300.0までの半角数字で入力してください' }

  validates :age,presence: true,
  numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 200,message: '半角数字で入力してください' }

  validates :sex, presence: true, inclusion: { in: [1, 2], message: 'は1または2の半角数字で入力してください' }





end
