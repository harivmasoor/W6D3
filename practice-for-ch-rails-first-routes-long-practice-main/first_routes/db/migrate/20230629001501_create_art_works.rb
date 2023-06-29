class CreateArtWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :art_works do |t|
      t.string :title, null: false
      t.text :image_url, null: false
      t.references :artist, null: false, foreign_key: {to_table: :users}
      t.index [:title, :artist_id], unique: true
      t.timestamps
    end
    
  end
end
