class CreateArtWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :art_works do |t|

      t.timestamps
    end
  end
end
