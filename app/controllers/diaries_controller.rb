class DiariesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @diary = Diary.new
  end
  
  def show
    @diary = Diary.find(params[:id])
    
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
    @diary = Diary.find(params[:id])
  end
  
  def update
    @diary = Diary.find(params[:id])
    if @diary.update(diary_params)
      redirect_to category_diary_path(@diary.category, @diary)
    else
      render :edit
    end
  end
  
  def destroy
    diary = Diary.find(params[:id])
    diary.destroy
    
    redirect_to category_path(Category.find(params[:category_id]))
  end
  
  private
  
  def diary_params
    params.require(:diary).permit(:title, :body, :image)
  end
  
end
