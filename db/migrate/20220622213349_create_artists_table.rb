class CreateArtistsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :members
      t.timestamps
    end
  end
end
