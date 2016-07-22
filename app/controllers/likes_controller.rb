class LikesController < ApplicationController
  def index
  end

  def show
    if like.exists?(params{like.id})
      render Like.all[like_id].to_json, status: 200
    else
      render json: { message: "Not Found" }, status: 400
    end
  end

  def edit
  end

  def create
    Like.new(id: params[:id])

    if user.save
      render json: like.to_json, status: 200
    else
      render json: like.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end
end
