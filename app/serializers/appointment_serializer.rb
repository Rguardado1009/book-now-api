class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :date, :service, :employee
  has_one :service
  has_one :user
  has_one :employee
end
