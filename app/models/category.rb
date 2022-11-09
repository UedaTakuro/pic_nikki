class Category < ApplicationRecord
  has_many :diaries, dependent: :destroy
  
  validates :name, presence:true
end
