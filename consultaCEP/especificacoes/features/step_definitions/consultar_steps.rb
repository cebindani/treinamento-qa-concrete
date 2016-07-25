# -*- encoding : utf-8 -*-

######### DADO #########
Dado(/^que estou na tela de consulta de CEP/) do
  @page = page(ConsultarScreen).await(timeout: 5)
end

######### QUANDO #########

Quando(/^digitar o CEP "([^"]*)"$/) do |cep|
  @page.digitar_cep(cep)
end

Quando(/^apertar o botão consultar$/) do
  @page.apertar_botao_consultar
end

######### ENTÃO #########

Então(/^devo ver o endereço "([^"]*)"$/) do |endereco|
  @page.is_on_page? endereco
end

Então(/^devo ver a mensagem "([^"]*)"$/) do |mensagem|
  @page.is_on_page? mensagem
end
