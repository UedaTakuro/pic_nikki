class SearchesController < ApplicationController
  def search
    if params[:created_at] == ""
      @search_again = "日付を選択してください"
    else
      create_at = params[:created_at]
      @diaries = Diary.where(['created_at LIKE ? ', "#{create_at}%"])
    end
  end
end
