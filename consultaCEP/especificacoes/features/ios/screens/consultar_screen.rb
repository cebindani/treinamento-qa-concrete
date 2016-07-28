# -*- encoding : utf-8 -*-
class ConsultarScreen < IOSScreenBase

  trait(:trait)       { "* marked:'#{layout_name}'" } #marked é qquer elemento


  element(:layout_name)           { 'CONSULTAR_SCREEN' }
  element(:campo_cep)             { 'CAMPO_CEP' }
  element(:botao_consultar)       { 'Buscar' }


  action(:apertar_botao_consultar) {
    touch_screen_element (botao_consultar)
  }

  def digitar_cep (cep)
    enter(cep, campo_cep)
  end

  # Identificador da tela
  # trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
  # element(:layout_name)         { pending 'Insert layout identificator' }
  # element(:button)              { pending 'Insert button identificator' }

  # Declare todas as acoes da tela
  # action(:touch_button) do
  #   touch("* marked:'#{button}'")
  # end
end
