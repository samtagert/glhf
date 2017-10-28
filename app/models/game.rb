class Game < ApplicationRecord
  has_many :reviews
  has_many :tags, through: :tagging
end
