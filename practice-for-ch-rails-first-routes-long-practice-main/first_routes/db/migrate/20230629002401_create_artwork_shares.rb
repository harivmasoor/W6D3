class CreateArtworkShares < ActiveRecord::Migration[7.0]
  def change
    create_table :art_works_shares do |t|
      t.references :art_work, null: false, foreign_key: true
      t.references :viewer, null: false, foreign_key: {to_table: :users}
      t.index [:art_work_id, :viewer_id], unique: true
      t.timestamps
    end
  end
end
