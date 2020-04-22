class Api::CommentsController < ApplicationController

  def index
    comments = Comment.all
    
    render json: {comments: comments}
  end

  def create
    comments = Comment.create(comments_params)

    if comments.persisted?
      render json: {message: 'You succsessfully created a comment!'}, status: 200
    else
      render json: {error_message: 'You couldnt create this comment'}, status: 400
    end
  end

  private

  def comments_params
   params.permit(:body, :article_id, :created_at, :updated_at)
  end
end
