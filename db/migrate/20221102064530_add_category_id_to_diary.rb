class AddCategoryIdToDiary < ActiveRecord::Migration[6.1]
  def change
    add_column :diaries, :category_id, :integer
  end
end
