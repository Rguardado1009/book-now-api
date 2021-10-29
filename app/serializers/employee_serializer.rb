class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :Knownfor, :images
  has_many :appointments
  has_many :services, through: :employee_services 
  has_many :services
  has_many :users
  has_many :users, through: :appointments
  has_many :reviews, through: :services
  has_many :reviews
  
end
