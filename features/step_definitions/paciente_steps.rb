Given('Estou na pagina de cadastrar paciente') do
  visit 'pacientes/new'
  expect(page).to have_current_path('/pacientes/new')
end

When('eu preencho os dados name {string} birthday {string} cpf {string} email {string} e clico cadastrar') do |name, birthday, cpf, email|
  fill_in 'paciente[name]', :with => name
  fill_in 'paciente[birthday]', :with => birthday
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  click_button 'Create Paciente'
end

Then('vejo que o meu cadastro com name {string} foi realizado') do |name|
  expect(page).to have_content(name)
  expect(page).to have_current_path('/paciente' + '/' +
                                      Paciente.last.id.to_s)
end