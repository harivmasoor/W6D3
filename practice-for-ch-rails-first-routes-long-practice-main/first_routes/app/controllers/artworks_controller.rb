class ArtworksController < ApplicationController
    def index
      render json: Artwork.all
    end
  
    def create
      artwork = Artwork.new(artwork_params)
      # replace the `artwork_attributes_here` with the actual attribute keys
      if artwork.save
        render json: artwork
      else
        render json: artwork.errors.full_messages, status: :unprocessable_entity
      end
    end
  
    def show
      # Get an instance of a artwork
      artwork = Artwork.find_by(id: params[:id])
      # Render their info
      render json: artwork
    end
  
    def update
      artwork = Artwork.find_by(id: params[:id])
      artwork.update(artwork_params)
      render json: artwork
    end
  
    def delete
      artwork = Artwork.find_by(id: params[:id])
      artwork.destroy
      redirect_to artworks_url
    end
  
    private
    def artwork_params
      params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
  end