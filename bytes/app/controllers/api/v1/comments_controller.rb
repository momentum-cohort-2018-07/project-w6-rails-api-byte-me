class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]
  skip_before_action :verify_authentication, only: [:index]

  def new
    if current_user
      @comment = Comment.new
    else
      redirect_to posts_path
    end
  end

  def index
    @comments = Comments.all 
  end

  def create
    if current_user
      @comment = Comment.new(comment_params)

      if @comment.save
        render json: @comment, status: :created 
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @comment.destroy 
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def Comment_params
    params.require(:byte).permit(:body, :user_id, :byte_id)
  end
end
