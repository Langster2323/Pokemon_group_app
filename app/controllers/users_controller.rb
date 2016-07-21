class UsersController < ApplicationController
  def index
    render json: User.all, status: 200
  end

  def show
    if user.exists?(params{user.id})
      render User.all[user_id].to_json, status: 200
    else
      render json: { message: "Not Found" }, status: 400
    end
  end

  def edit
  end

  def create
    User.new(id: params[:id])

    if user.save
      render json: user.to_json, status: 200
    else
      render json: user.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
    user.find (params[:id])
    if user.update(user_id: params[:user_id], quantity: params[:quantity])
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
