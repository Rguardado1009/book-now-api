class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :hourly_rate, :duration, :Image
  has_many :appointments

end
