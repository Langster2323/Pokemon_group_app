class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]
  def index
    render json: User.all, status: 200
  end

  def show
    if User.exists?(params[user.id])
      render User.find(params.fetch(:id)), status: 200
    else
      render json: { message: "Not Found" }, status: 400
    end
  end

  def edit
    # render json: User.find(params[:id])
    if current_user != user
      flash[:alert] = "You cannot edit other users only you."
      redirect_to_users_path
    end
  end

  def create
    user = User.new(id: params[:id])

    if user.save
      render json: user.to_json, status: 200
    else
      render json: user.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
  user = User.find (params[:id])
    if user.update(user_id: params[:user_id])
      render json: { user: user, message: '', status: 200 }
    else
      render json: { user: user, message: '', status: 404 }
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
    params.require(:user).permit(:username, :password)
  end

  protected
    def authenticate_via_token
      authenticate_or_request_with_http_token do |token, _|
        User.find_by(auth_token: token)
    end
    end
end
