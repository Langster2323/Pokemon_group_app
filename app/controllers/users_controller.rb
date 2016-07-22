class UsersController < ApplicationController
  def index
    render json: User.all, status: 200
  end

  def show
    if User.exists?(params{user.id})
      render User.all[user_id].to_json, status: 200
    else
      render json: { message: "Not Found" }, status: 400
    end
  end

  def edit
  end

  def create
    user = User.new(id: params[:id])

    if User.save
      render json: user.to_json, status: 200
    else
      render json: user.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
  user = User.find (params[:id])
    if user.update(user_id: params[:user_id], quantity: params[:quantity])
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

  def user_params
    params.require(:user).permit(:name, :password, :email)
  end
end
