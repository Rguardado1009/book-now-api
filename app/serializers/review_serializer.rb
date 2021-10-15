class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :rating
  has_one :user
  has_one :employee
end
