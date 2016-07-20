# encoding: utf-8

require_relative "../../../tdd/calculadora.rb"


Dado(/^os argumentos "(.*?)" e "(.*?)"$/) do |arg1, arg2|
  @arg1 = arg1.to_i #como o Ruby não é tipado, precisamos garantir que ele pegue um Int
  @arg2 = arg2.to_i
end

Quando(/^(?:efetuarmos|efetuei) a (soma|divisão)$/) do |arg1|
  calculadora = Calculadora.new
  if arg1 == "soma"
    @resultado = calculadora.soma(@arg1, @arg2)
  else
    begin
      @resultado = calculadora.divisao(@arg1, @arg2)
    rescue
      @resultado = "Mensagem de erro"
    end
  end
end



Então(/^o resultado será "(.*?)"$/) do |arg1|
  raise "Deu ruim, resultado obtido foi #{@resultado}" unless @resultado == arg1.to_i
end

Então(/^veremos uma mensagem de erro$/) do
  raise "Deu ruim, sem mensagem de erro" unless @resultado == "Mensagem de erro"
end
