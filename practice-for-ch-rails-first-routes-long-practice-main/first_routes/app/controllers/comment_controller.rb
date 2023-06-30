class CommentsController < ApplicationController
    def index
        if params.has_key?(:user_id)
            user_id = params[:user_id]
            user = User.find_by(id: user_id)
            if user
                comments = user.comments
                render json: comments
            else
                render json: "No comments found for this user", status: 404
            end
        elsif params.has_key?(:artwork_id)
            artwork_id = params[:artwork_id]
            artwork = Comment.find_by(id: artwork_id)
            if artwork
                comments = artwork.comments
                render json: comments
            else
                render json: "No comments found for this artwork", status: 404
            end
        end
        render json: "we need user or piece of art!"
    end

    def create
      comment = Comment.new(comment_params)
      if comment.save
        render json: comment
      else
        render json: comment.errors.full_messages, status: :unprocessable_entity
      end
    end

    def delete
      comment = Comment.find_by(id: params[:id])
      comment.destroy
      render json: comment
    end

    private
    def comment_params
      params.require(:comment).permit(:body, :author_id, :artwork_id)
    end
  end