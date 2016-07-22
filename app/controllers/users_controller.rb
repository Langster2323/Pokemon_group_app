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
    users = User.new(id: params[:id])

    if User.save
      render json: users.to_json, status: 200
    else
      render json: users.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
  users = User.find (params[:id])
    if users.update(user_id: params[:user_id], quantity: params[:quantity])
      render json: order.to_json, status: 200
    else
      render json: order.errors.to_json, status: :unprocessable_entity
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
end
