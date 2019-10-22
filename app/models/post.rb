class Post < ApplicationRecord
  belongs_to :category_id
  validates :title, :content, presence: true
end
