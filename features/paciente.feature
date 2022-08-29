Feature:
  As a paciente
  I want to criar, editar, remover e visualizar meu cadastro
  So that possa manter atualizado meu cadastro

  Scenario: cadastrar paciente
    Given Estou na pagina de cadastrar paciente
    When eu preencho os dados name 'Ivan do nascimento' birthday '04/03/2001' cpf '999999999999' email 'passo@gmail.com' e clico cadastrar
    Then vejo que o meu cadastro com name 'Ivan do nascimento' foi realizado


