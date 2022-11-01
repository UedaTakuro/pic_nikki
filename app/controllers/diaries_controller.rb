class DiariesController < ApplicationController
  def new
    @diary = Diary.new
  end
  
  def show
    
  end
  
  def create
    @diary = Diary.new(book_params)
    
    redirect_to 
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
