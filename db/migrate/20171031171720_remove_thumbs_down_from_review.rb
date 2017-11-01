class RemoveThumbsDownFromReview < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :thumbs_down, :integer
  end
end
