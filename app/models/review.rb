class Review < ApplicationRecord
  belongs_to :user
  belongs_to :employee

  validates :title, :content, presence: true
end


