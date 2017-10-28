class Tag < ApplicationRecord
  has_many :games, through: :tagging  
end
