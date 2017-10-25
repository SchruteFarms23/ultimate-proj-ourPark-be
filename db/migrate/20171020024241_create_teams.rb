class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :game_id
      t.integer :points, :default => 0

      t.timestamps
    end
  end
end
