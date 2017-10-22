class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :park_id
      t.timestamp :date
      t.string :score
      t.string :active, :default => "pending"

      t.timestamps
    end
  end
end
