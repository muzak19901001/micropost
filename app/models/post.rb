class Post < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum:50 }
  
  has_many :favorites
  has_many :users, through: :favorites
end
