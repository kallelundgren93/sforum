class TopicsController < ApplicationController

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new(category_id: params[:category_id])
  end

  def create
    @topic = Topic.create! topic_params
    redirect_to @topic.category
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :body, :category_id).merge user: current_user
  end
end
