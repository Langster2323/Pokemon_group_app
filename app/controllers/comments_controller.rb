class CommentsController < ApplicationController
  def index
    render json: comment.all, status: 200
  end

  def show
    if Comment.exists?(params{comment_id})
      render Comment.all[comment.id].to_json, status: 200
    else
      render json: { message: "Not Found" }, status: 400
    end
  end

  def edit
  end

  def create
    Comment.new(id: params[:id])

    if comment.save
      render json: comment.to_json, status: 200
    else
      render json: comment.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
    comment.find (params[:id])
    if comment.update(comment_id: params[:comment_id], quantity: params[:quantity])
    else
      render json: comment.errors.to_json, status: :unprocessable_entity
    end
  end

  def destroy
  end
end
