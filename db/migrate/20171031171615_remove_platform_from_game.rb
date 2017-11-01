class RemovePlatformFromGame < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :platform, :string
  end
end
