class Game < ApplicationRecord
  has_many :reviews
  has_many :taggings
  has_many :tags, through: :taggings
end
