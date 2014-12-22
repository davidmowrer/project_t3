class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :rubber_chicken
      t.integer :loser
      t.integer :alien

      t.timestamps
    end
  end
end
