class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @topic = Topic.find(@post.topic_id)
  end

  def create
    @post = Post.create! post_params
    redirect_to @post.topic
  end

  private

  def post_params
    params.require(:post).permit(:body, :topic_id).merge user: current_user
  end
end
