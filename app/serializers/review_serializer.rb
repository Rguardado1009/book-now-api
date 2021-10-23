class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :rating, :user_id, :employee_id, :created_at, :updated_at
  has_many :user
  has_many :employee
end
