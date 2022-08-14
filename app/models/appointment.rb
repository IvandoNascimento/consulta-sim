class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :paciente
end
