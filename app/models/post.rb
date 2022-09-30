class Post < ApplicationRecord
  validates :post_title, presence: :true, length: { minimum: 5, maximum: 30 }
  validates :post_text, presence: true, length: { minimum: 5, maximum: 500 }
  
  belongs_to :user
end
