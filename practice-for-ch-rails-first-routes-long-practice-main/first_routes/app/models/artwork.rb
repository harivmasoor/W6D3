class Artwork < ApplicationRecord
    validates :title, uniqueness: {scope: :artist_id}

    belongs_to :artist,
      class_name: :User

    has_many :artwork_shares,
      foreign_key: :artwork_id,
      class_name: :ArtworkShare,
      inverse_of: :artwork,
      dependent: :destroy

    has_many :comments,
      dependent: :destroy
  end
