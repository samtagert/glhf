class Game < ApplicationRecord
  has_many :reviews
  has_many :taggings
  has_many :tags, through: :taggings

  def review_avg
    @avg = 0
    self.reviews.each do |review|
      @avg += review.rating
    end
    if self.reviews.count > 0
      @avg / self.reviews.count
    else
      "N/A"
    end
  end
end
