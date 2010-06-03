class PostsController < ApplicationController         
  
  respond_to :html
  
  def index      
    #TODO pull back all vote counts in one query as opposed to doing it in the helper.  This is ineffecient.
    @post = Post.order("posts.week DESC").limit(1).joins(:secrets).first
  end
  
end
