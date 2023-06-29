class ArtworkSharesController < ApplicationController
    def index
      user_id = params[:user_id]
      user = User.find_by(id: user_id)
      if user
        art_created = user.artworks
        art_shared = user.shared_artworks
        render json: {"art_created" => art_created, "art_shared" => art_shared}
      else 
        render json: "Artwork Shares for user not found", status: 404
      end
    end
  
    # def create
    #   artwork_shares = ArtworkShare.new(artwork_params)
    #   # replace the `artwork_attributes_here` with the actual attribute keys
    #   if artwork.save
    #     render json: artwork
    #   else
    #     render json: artwork.errors.full_messages, status: :unprocessable_entity
    #   end
    # end
  
    # def delete
    #   artwork = Artwork.find_by(id: params[:id])
    #   artwork.destroy
    #   redirect_to artworks_url
    # end
  
    # private
    # def artwork_params
    #   params.require(:artwork).permit(:title, :image_url, :artist_id)
    # end
  end