

class Paciente < ApplicationRecord
  has_one :address
  validates :name, presence:true, length: {minimum: 5}
  validates :email, presence: true, lenght: {minimum: 5}
  validates :cpf, presence: true, uniqueness: true

  end
end
