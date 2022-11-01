class CategoriesController < ApplicationController
  def new
    
  end
  
  def index
    
  end
  
  def show
    
  end
  
  def create
    @category = Category.new(book_params)
    
    redirect_to 
    
  end
  
  def destroy
    
  end
  
  private
  
  def category_params
    params.require(:category).permit(:name)
  end
  
end
