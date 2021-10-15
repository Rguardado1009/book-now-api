class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :service
  belongs_to :employee
  has_many :employees

  validates :user_id, presence: true
  validates :employee_id, presence: true
  validates :date, uniqueness: {scope: [:start_time, :end_time, :employee_id], message: 'Please Choose a different time!'}
end
