require "test_helper"

class DoctorTest < ActiveSupport::TestCase
  test 'criando um medico' do
    medico = Doctor.new name:"Ivan do", crm: "9999999", cpf:"99999999999" , email: "teste@test.com", specialty: "Cardiologia"
    medico.save
  end
  test "criando um medico sem cpf" do
    numero_medico = Medico.all.length
    medico = Doctor.new name:"Ivan do", crm: "9999999" , email: "teste@test.com", specialty: "Cardiologia"
    assert_not medico.save
    assert(Medico.all.length == numero_medico)
  end
end
