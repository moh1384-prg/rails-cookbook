class CategoriesController < ApplicationController
  # before_action :set_category

def index
@categories = Category.all
end

def show
  @category = Category.find(params[:id])
end

def new
  @category = Category.new
end

def create
  @category = Category.new(category_params)
  if @category.save
    redirect_to categories_path
  else
    render :new,  status: :unprocessable_entity
  end
end


private

def category_params
  params.require(:category).permit(:name, :photo)
end

end
