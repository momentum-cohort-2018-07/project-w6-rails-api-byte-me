class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]
  before_action :set_user, only: [:destroy]
  skip_before_action :verify_authentication, only: [:index]

  def new
    if current_user
      @comment = Comment.new
    else
      redirect_to posts_path
    end
  end

  def index

    @comments = []

    Comment.all.each do |comment|
      if comment.byte_id === Byte.find(params[:byte_id]).id
        @comments << comment
      end
    end
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
    if current_user === @user
      @comment.destroy
      render json: @comment, status: :destroyed
    else
  
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_user
    ctest = Comment.find(params[:id]).user_id
    @user = User.find(btest)
  end

  def comment_params
    params.require(:comment).permit(:body, :user_id, :byte_id)
  end
end
