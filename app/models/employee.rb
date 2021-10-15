class Employee < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :services
    has_many :employee_services
    has_many :reviews
    has_many :users, through: :appointments
    has_many :services, through: :employee_services
end
