Feature:
  As a doctor
  I want to criar, editar, remover e visualizar meu cadastro
  So that possa manter atualizado meu cadastro

  Scenario: cadastrar medico
    Given Estou na pagina de cadastrar medico
    When eu preencho os dados Name 'Ivan do Nascimento' Cpf '99999999999' Email 'test@test.com' Specialty 'Cardiologista' Crm '99999999' e clico cadastrar
    Then vejo que o meu cadastro com Name 'Ivan do Nascimento' foi realizado

