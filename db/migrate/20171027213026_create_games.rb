class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.date :release_date
      t.string :platform

      t.timestamps
    end
  end
end
