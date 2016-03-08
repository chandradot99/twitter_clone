class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    
    respond_to do |f|
      if @post.save
        f.html { redirect_to "", notice: "Post successfully created" }
      else
        f.html { redirect_to "", notice: "Post cannot be created" }
      end
    end

  end

  private

  def post_params
    params.require(:post).permit(:post_id, :content)
  end

end