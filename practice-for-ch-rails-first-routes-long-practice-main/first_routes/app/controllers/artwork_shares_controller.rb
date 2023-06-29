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

    def create
      artwork_share = ArtworkShare.new(artwork_share_params)
      if artwork_share.save
        render json: artwork_share
      else
        render json: artwork_share.errors.full_messages, status: :unprocessable_entity
      end
    end

    def delete
      artwork_share = ArtworkShare.find_by(id: params[:id])
      artwork_share.destroy
      render json: artwork_share
    end

    private
    def artwork_share_params
      params.require(:artwork_share).permit(:artwork_id, :viewer_id)
    end
  end
