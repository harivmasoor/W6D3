class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :artwork_shares, :art_work_id, :artwork_id
  end
end
