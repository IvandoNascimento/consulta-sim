require "test_helper"

class PacienteTest < ActiveSupport::TestCase

  test 'criando um paciente completo' do
    paciente = Paciente.new name: "Ivan do Nascimento", birthday: "04/03/2001", cpf:"99999999999" , email: "teste@test.com"
    assert paciente.save
  end

  test 'criando um paciente sem cpf,invalido' do
    paciente = Paciente.new name: "Ivan do Nascimento", birthday: "04/03/2001", email: "teste@test.com"
    assert_not paciente
  end
end
