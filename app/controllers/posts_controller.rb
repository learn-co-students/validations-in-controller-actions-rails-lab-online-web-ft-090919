class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params) #this is syaing was anything in the post_params were updated?
      redirect_to post_path(@post) # this is saying if so send them to there updated post 
    else
      render :edit #if not show them the edit form again
    end 
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
