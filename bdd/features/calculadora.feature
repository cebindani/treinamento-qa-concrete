#language: pt
#encoding: utf-8

Funcionalidade: Calculadora
Uma calculadora é capaz de somar e dividir
As operações são sempre com dois valores
Sempre que for executada uma divisão por zero, deve ser exibida uma mensagem de erro.


Esquema do Cenário: Somar dois números
Dado os argumentos "<PRIMEIRO>" e "<SEGUNDO>"
Quando efetuarmos a soma
Então o resultado será "<RESULTADO>"

Exemplos:
| PRIMEIRO | SEGUNDO | RESULTADO |
| 1		   | 1       | 2         |
| 2        | 6       | 8         |
| -1       | 5       | 4         |


Esquema do Cenário: Dividir dois números.

Dado os argumentos "<PRIMEIRO>" e "<SEGUNDO>"
Quando efetuei a divisão
Então o resultado será "<RESULTADO>"

Exemplos:
| PRIMEIRO | SEGUNDO | RESULTADO |
| 1        | 1       | 1         |
| 4        | 2       | 2         |
| 0        | 1       | 0         |


Cenário: Divisão por zero deve exibir mensagem de erro
Dado os argumentos "1" e "0"
Quando efetuarmos a divisão
Então veremos uma mensagem de erro