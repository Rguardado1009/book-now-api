class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :hourly_rate, :duration
  has_many :appointments

end
