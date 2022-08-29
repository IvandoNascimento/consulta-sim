require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  test 'criando uma consulta' do
    consulta = Appointment.new date: "30/08/2022" ,time: "18", doctor_id: "1", paciente_id: "1"
    assert consulta.save
  end

  test 'criando uma consulta sem medico e paciente' do
    consulta = Appointment.new date: "30/08/2022" ,time: "18"
    assert consulta.save
  end
end
