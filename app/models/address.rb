class Address < ApplicationRecord
  belongs_to :paciente
  validates :CEP, presence:true, lenght: {minimum: 3}
  validates :city, presence:true, length: {minumun: 3}
end
