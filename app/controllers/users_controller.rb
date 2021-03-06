class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, only: [:new, :edit]
  def index
    render json: User.all, status: 200
  end

  def show
    if User.exists?(params[:id])
      render json: User.find(params.fetch(:id)), status: 200
    else
      render json: { message: "Not Found" }, status: 400
    end
  end

  def edit
  end

  def create
    user = User.new(params[:id])
    if user.save
      render json: user.to_json, status: 200
    else
      render json: user.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
  user = User.find (params[:id])
    if user.update(user_params)
      render json: { user: user, message: 'Update successful', status: 200 }
    else
      render json: {user: user, message: 'Update failed', status: 404 }
    end
  end

  def destroy
    if User.exists?(params[:id])
      User.destroy(params[:id])
      render json: { message: "User destroyed." }, status: 200
    else
      render json: { message: "User not found." }, status: 400
    end

  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :favorite, :profileImg, :description)
  end

  protected
    def authenticate_via_token
      authenticate_or_request_with_http_token do |token, _|
        User.find_by(auth_token: token)
    end
    end
end
