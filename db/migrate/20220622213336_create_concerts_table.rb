class CreateConcertsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :location
      t.string :venue
      t.integer :artists_id
      t.integer :users_id
      t.timestamps
    end
  end
end
