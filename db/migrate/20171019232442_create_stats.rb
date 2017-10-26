class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.integer :points, :default => 0
      t.integer :assists, :default => 0
      t.integer :rebounds, :default => 0
      t.integer :blocks, :default => 0
      t.integer :steals, :default => 0
      t.integer :threes, :default => 0
      t.integer :user_id
      t.integer :game_id
      t.timestamps
    end
  end
end
