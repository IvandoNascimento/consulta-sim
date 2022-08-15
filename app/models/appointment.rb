class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :paciente

  validate :time,  invalid_time
  validate :date, invalid_date

  def invalid_time
    if %w[07:00 08:00 09:00 10:00 11:00 12:00 14:00 15:00 16:00 17:00 18:00 19:00].exclude? time
      errors.add(:time, "O horário escolhido é fora do horário comercial!")
    end
  end

  def invalid_date
    if date.present? && date < Date.today
      errors.add(:date, "the appointment must be scheduled on a date later than today")
    end
  end
end
