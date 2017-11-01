class AddTrailerToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :trailer, :string
  end
end
