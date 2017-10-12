class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :location
      t.float :lat
      t.float :long
      t.string :borough

      t.timestamps
    end
  end
end
