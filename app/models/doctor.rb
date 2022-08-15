class Doctor < ApplicationRecord
  has_many :appointments

  validates :name, presence: true, length: {in: 2..30}
  validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :speciality, presence: true, length: {in: 2..30}
end
