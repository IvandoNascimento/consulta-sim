class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :paciente

  validates :time, :format => { :with => /\A(\+1)?[0-9]{2}\z/, :message => "Not a valid time" }
  validate :date, :invalid_date


  def invalid_date
    if date.present? && date < Date.today
      errors.add(:date, "the appointment must be scheduled on a date later than today")
    end
  end
end
