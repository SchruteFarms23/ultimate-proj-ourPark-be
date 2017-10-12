class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :weight
      t.string :height
      t.string :home
      t.string :image_url
      t.integer :park_id

      t.timestamps
    end
  end
end
