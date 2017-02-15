class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def edit
    @post = Post.find(params[:id])

    redirect_to edit_post_path
  end
end
