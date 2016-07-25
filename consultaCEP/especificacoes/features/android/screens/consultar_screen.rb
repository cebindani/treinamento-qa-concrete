# -*- encoding : utf-8 -*-
class ConsultarScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'consultar_activity' }
  element(:campo_cep) 			{'input_cep'}
  element(:botao_consultar)     { 'botao_consulta' }

  # Declare todas as acoes da tela
  action(:apertar_botao_consultar) do
  	touch_screen_element(botao_consultar) #espera até 5s para o botão aparecer na tela
    
  end

  def digitar_cep(cep)
    enter cep, campo_cep
  end
end
