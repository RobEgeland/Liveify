class CreateConcertsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :location
      t.string :venue
      t.integer :artist_id
      t.integer :user_id
      t.timestamps
    end
  end
end
