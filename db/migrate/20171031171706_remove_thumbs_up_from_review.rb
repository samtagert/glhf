class RemoveThumbsUpFromReview < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :thumbs_up, :integer
  end
end
