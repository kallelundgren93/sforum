class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])

  end

  def index
    @categories = Category.root.by_name
    @topics = Topic.limit(9).by_date
    @posts = Post.limit(9).by_date
  end
end
