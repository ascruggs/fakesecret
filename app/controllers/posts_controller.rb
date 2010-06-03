class PostsController < ApplicationController         
  
  respond_to :html
  
  def index
    @post = Post.order("posts.week DESC").limit(1).joins(:secrets).first
  end
  
end
