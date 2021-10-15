class EmployeeService < ApplicationRecord
  belongs_to :service
  belongs_to :employee
end
