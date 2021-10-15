class Service < ApplicationRecord
  has_many :appointments
  has_many :reviews
  has_many :employees
  has_many :employee_services
  has_many :employees, through: :employee_services
end
