class ArtworkShares < ApplicationRecord
    validates :art_work_id, uniqueness: {scope: :viewer_id}
  
    
  
  end