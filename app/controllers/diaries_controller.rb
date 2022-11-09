class DiariesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @diary = Diary.new
  end
  
  def show
    
  end
  
  def create
    @category = Category.find(params[:category_id])
    @diary = Diary.new(diary_params)
    @diary.category_id = @category.id
    if @diary.save
      redirect_to category_path(@diary.category)
    else
      render :new
    end
  end
  
  def edit
    
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def diary_params
    params.require(:diary).permit(:title, :body, :image)
  end
  
end
