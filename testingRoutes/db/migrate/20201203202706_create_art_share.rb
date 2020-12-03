class CreateArtShare < ActiveRecord::Migration[5.2]
  def change
    create_table :art_shares do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false

      t.timestamps
    end
  end
end
