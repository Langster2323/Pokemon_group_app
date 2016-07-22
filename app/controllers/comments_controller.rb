class CommentsController < ApplicationController
  def index
    render json: Comment.all, status: 200
  end

  def show
  end

  def edit
  end

  def create
    Comment.new(id: params[:id])

    if comments.save
      render json: comments.to_json, status: 200
    else
      render json: comment.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
    Comment.find (params[:id])
    if comments.update(comment_id: params[:comment_id], quantity: params[:quantity])
    else
      render json: comments.errors.to_json, status: :unprocessable_entity
    end
  end

  def destroy
  end
end
