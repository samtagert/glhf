class AddImageToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :image, :string
  end
end
