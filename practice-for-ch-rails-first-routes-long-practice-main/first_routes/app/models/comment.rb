class Comment < ApplicationRecord
    validates :body, uniqueness: true

    belongs_to :author,
        class_name: :User

    belongs_to :artwork
  end