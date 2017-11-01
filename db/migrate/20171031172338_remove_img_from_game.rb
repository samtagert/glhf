class RemoveImgFromGame < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :img, :string
  end
end
