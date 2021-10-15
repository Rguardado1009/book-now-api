class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :hourly_rate, :duration


end
