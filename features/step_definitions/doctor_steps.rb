Given(/^Estou na pagina de cadastrar medico$/) do
  visit 'doctors/new'
  expect(page).to have_current_path('/doctors/new')
end

When('eu preencho os dados Name {string} Cpf {string} Email {string} Specialty {string} Crm {string} e clico cadastrar') do
|name, cpf, email, specialty, crm|
  fill_in 'doctor[name]', :with => name
  fill_in 'doctor[cpf]', :with => cpf
  fill_in 'doctor[email]', :with => email
  fill_in 'doctor[specialty]', :with => specialty
  fill_in 'doctor[crm]', :with => crm
  click_button 'Create Doctor'
end

Then('vejo que o meu cadastro com Name {string} foi realizado') do |name|
  expect(page).to have_content(name)
  expect(page).to have_current_path('/doctor' + '/' +
                                      Doctor.last.id.to_s)
end
#
