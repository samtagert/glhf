class User < ApplicationRecord
  has_secure_password
  validates :user_name, presence: true, uniqueness: true
  validates :favorite_game, presence: true
  has_many :reviews
end
