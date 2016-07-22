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
    if Like.exists?(params[:id])
      Like.destroy(params[:id])
      render json: { message: "Like disliked" }, status: 200
    else
      render json: { message: "Unrecognizable Action" }, status: 404
    end
  end
end
