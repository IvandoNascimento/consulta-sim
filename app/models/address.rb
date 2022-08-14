class Address < ApplicationRecord
  belongs_to :paciente
  validates :CEP, presence:true, length: {minimum: 3}
  validates :city, presence:true, length: {minimum: 3}
end
