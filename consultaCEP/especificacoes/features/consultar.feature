# language: pt
#encoding: utf-8

Funcionalidade: Consultar
  Posso consultar um CEP válido.
  Se consultar um CEP inválido (problema de formatação), devo ver uma mensagem de erro.
  Se consultar um CEP inexistente (CEP válido que não existe na base dos Correios), devo ver uma mensagem de erro.

#  Contexto: #nesse caso não pecisamos do Contexto(Background)  pois é a primeira tela
    # Insira os passos

  @dev
  Cenário: Consultar um CEP válido
    Dado que estou na tela de consulta de CEP
    Quando digitar o CEP "13080570"
    E apertar o botão consultar
    Então devo ver o endereço "Pedro Vieira da Silva"


  Cenário: Consultar um CEP inválido
    Dado que estou na tela de consulta de CEP
    Quando digitar o CEP ""
    E apertar o botão consultar
    Então devo ver a mensagem "CEP inválido"

  Cenário: Consultar um CEP inexistente
    Dado que estou na tela de consulta de CEP
    Quando digitar o CEP "00000000"
    E apertar o botão consultar
    Então devo ver a mensagem "CEP não encontrado"