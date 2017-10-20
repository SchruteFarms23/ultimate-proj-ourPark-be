class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.integer :points
      t.integer :assists
      t.integer :rebounds
      t.integer :blocks
      t.integer :steals
      t.integer :user_id
      t.integer :game_id
      t.timestamps
    end
  end
end
