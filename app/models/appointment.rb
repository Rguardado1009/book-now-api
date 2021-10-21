class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :service
  belongs_to :employee

  validates :date, presence: true
  validate :appointment_date_cannot_be_in_the_past
  validates :start_time, :end_time, presence: true
  validate  :start_time_and_end_time

  private
  def start_time_and_end_time
    return if end_time.blank? || start_time.blank?
    if end_time < start_time
      errors.add(:End, "Time must be after the start date")
    end
  end

  def appointment_date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "Selected can't be in the past")
    end
  end    

  # validates :date, uniqueness: {scope: [:start_time, :end_time, :employee_id], message: 'Please Choose a different time!'}
end
