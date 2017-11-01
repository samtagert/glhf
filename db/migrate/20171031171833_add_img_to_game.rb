class AddImgToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :img, :string
  end
end
