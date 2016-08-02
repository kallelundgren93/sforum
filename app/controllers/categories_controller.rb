class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    
  end

  def index
    @categories = Category.root.by_name
  end
end
