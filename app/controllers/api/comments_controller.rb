class Api::CommentsController < ApplicationController

  def index
    comments = Comment.all
    
    render json: {comments: comments}
  end

  def create
    binding.pry    
  end
end
