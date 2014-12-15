class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :level_number
      t.string :level_name
      t.integer :crew_number
      t.string :crew_name
      t.integer :games_played

      t.timestamps
    end
  end
end
