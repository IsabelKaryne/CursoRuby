=begin
Desafio
Você foi contratado para criar um programa que mostrasse para os clientes o preço do gás de cozinha. Para isso foi explicado que o preço variava todos os meses por conta de impostos que eram alterados pelas refinarias em conjunto com o governo. Então, existe um imposto todo mês de 10% e um variável de acordo com a bolsa e vendas que poderia, ou não, estar presente mês a mês e que é cobrado com base no preço após o calculo do imposto de todo mês.

Crie um programa que faça essa verificação e print no console a seguinte frase: “O preço do gás nesse mês é de R$...”.

Lembrando que 0 representa false e 1 representa true.

Entrada
Serão três entradas sendo elas respectivamente: o preço do gás, se o imposto variável vai ser cobrado, ou não, e o valor do imposto variável.

Saída
A saída deverá ser a frase descrita no desafio e o preço do gás de cozinha naquele mês.

Exemplo
Entrada  	Saída
200
0
8	O preço do gás nesse mês é de R$220
200
1
8	O preço do gás nesse mês é de R$237.6
100
1
1	O preço do gás nesse mês é de R$111.1 
=end

preco_gas = gets.chomp.to_f               # Preço do gás
imposto_variavel = gets.chomp.to_i         # Indica se o imposto variável será aplicado (0 ou 1)
valor_imposto_variavel = gets.chomp.to_f   # Valor do imposto variável, em porcentagem

def calcular_preco_gas(preco_gas, imposto_variavel, valor_imposto_variavel)
  # Calcula o preço com o imposto fixo de 10%
  preco_com_imposto_fixo = preco_gas * 1.10

  # Se o imposto variável deve ser cobrado (imposto_variavel == 1)
  if imposto_variavel == 1
    # Calcula o imposto variável como porcentagem do preço com imposto fixo
    imposto_variavel_calculado = preco_com_imposto_fixo * (valor_imposto_variavel / 100.0)
    preco_com_imposto_fixo += imposto_variavel_calculado
  end
  
  # Formata a saída: sem casas decimais para inteiros, com uma casa para não inteiros
  if preco_com_imposto_fixo.round(1) == preco_com_imposto_fixo.to_i
    puts "O preço do gás nesse mês é de R$#{preco_com_imposto_fixo.to_i}"
  else
    puts "O preço do gás nesse mês é de R$#{'%.1f' % preco_com_imposto_fixo}"
  end
end

# Chama a função para calcular e exibir o preço final
calcular_preco_gas(preco_gas, imposto_variavel, valor_imposto_variavel)






