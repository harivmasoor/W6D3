class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)
    # replace the `user_attributes_here` with the actual attribute keys
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user
    else 
      render json: "User not found", status: 404
    end
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    render json: user
  end

  def delete
    user = User.find_by(id: params[:id])
    user.destroy
    redirect_to users_url
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
