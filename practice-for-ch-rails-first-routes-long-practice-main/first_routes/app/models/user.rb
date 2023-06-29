class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks

  # The user is the viewer
  has_many :artwork_shares

  has_many :shared_artworks,
    through: :artwork_shares,
    source: :artwork
end
