class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email
  has_many :appointments
  has_many :employees, through: :appointments
end
