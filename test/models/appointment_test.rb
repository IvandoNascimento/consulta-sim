require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  test 'criando uma consulta' do
    medico = Doctor.new name:"Ivan do", crm: "9999999", cpf:"99999999999" , email: "teste@test.com", specialty: "Cardiologia"
    medico.save
    paciente = Paciente.new name: "Ivan do Nascimento", birthday: "04/03/2001", cpf:"99999999999" , email: "teste@test.com"
    assert paciente.save
    consulta = Appointment.new date: "30/08/2022" ,time: "18", doctor_id: medico.id, paciente_id: paciente.id
    assert consulta.save
  end

  test 'criando uma consulta invalida' do
    numero_consulta = Appointment.all.length
    consulta = Appointment.new date: "30/08/2022" ,time: "18"
    assert_not consulta.save
    assert(Appointment.all.length == numero_consulta)
  end
end
