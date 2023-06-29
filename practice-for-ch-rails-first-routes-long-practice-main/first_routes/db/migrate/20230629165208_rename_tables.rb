class RenameTables < ActiveRecord::Migration[7.0]
  def change
    # Rename artworks to just 'artworks
    rename_table :art_works, :artworks
    # rename artworksshare to 'artwork_shares'
    rename_table :art_works_shares, :artwork_shares
  end
end
