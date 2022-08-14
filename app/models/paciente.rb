class Paciente < ApplicationRecord
  has_one :address, dependent: :destroy
  validates :name, presence:true, length: {minimum: 5}
  validates :email, presence: true, length: {minimum: 5}
  validates :cpf, presence: true, uniqueness: true

  accepts_nested_attributes_for :address, allow_destroy: true
end
