class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :park_id
      t.timestamp :date
      t.boolean :tracked, :default => false
      t.string :score, :default => "0 - 0"
      t.string :active, :default => "pending"

      t.timestamps
    end
  end
end
