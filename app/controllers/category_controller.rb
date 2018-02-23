class CategoryController < ApplicationController
	def index
  	@category = Category.all.order('created_at DESC')
  end
  def new 
  end

  def create
  	@category = Category.new(post_params)
  	@category.save

  	redirect_to @category
  end
  def show
  	@category = Category.find(params[:id])
  end
  private
  	def post_params
  		params.require(:category).permit(:name)
  	end
end