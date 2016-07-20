
require "test/unit"
require_relative "calculadora"

class CalculadoraTest < Test::Unit::TestCase


  def test_soma
    calculadora = Calculadora.new
    assert_equal(2, calculadora.soma(1,1))
    assert_equal(3, calculadora.soma(1,2))
    assert_equal(3, calculadora.soma(5, -2))
    assert_equal(-4, calculadora.soma(-5, 1))

  end

  def test_divisao
    calculadora = Calculadora.new
    assert_equal(2, calculadora.divisao(4,2))
    assert_equal(10, calculadora.divisao(100, 10))
    assert_equal(0, calculadora.divisao(0,2))
    
    assert_raise("Não podemos dividir por zero"){ ##mais ou menos como o (expected = Exception.class) do jUnit
    	calculadora.divisao(1,0)
    }
  end

end
