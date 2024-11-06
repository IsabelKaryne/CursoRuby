=begin
Desafio
Crie um programa que, dadas duas listas de números inteiros e tamanho igual,
some os índices pares de cada uma delas e print no console uma nova lista resultante dessa operação.

Entrada
As entradas serão duas listas.

Saída
A saída deverá ser uma nova lista com o resultado da soma dos índices pares das duas primeiras.

Exemplo
   Entrada  	                 Saída     
  1, 2, 3, 4, 5                2,6,10  
  1, 2, 3, 4, 5  
  --------------------------------------
  2, 3, 10, 11, 16, 17         3,13,21 
  1, 2, 3, 4, 5, 6	                       
=end

# Função que soma os índices pares de duas listas
def soma_indices_pares(lista1, lista2)
  resultado = []
  
  # Verifica se as listas têm o mesmo tamanho
  if lista1.length != lista2.length
    puts "As listas devem ter o mesmo tamanho!"
    return
  end

  # Itera pelos índices das listas
  lista1.each_with_index do |valor, index|
    if index.even? # Verifica se o índice é par
      resultado << (valor + lista2[index]) # Soma e adiciona ao resultado
    end
  end

  resultado
end

# Função para obter uma lista de números inteiros do usuário
def obter_lista
  loop do
    entrada = gets.chomp.split(',').map(&:strip) # Divide por vírgula e remove espaços
    # Verifica se todos os elementos da entrada são números inteiros
    if entrada.all? { |item| item.match?(/^\d+$/) }
      return entrada.map(&:to_i) # Converte para inteiros e retorna a lista
    else
      puts "Entrada inválida! Por favor, digite apenas números inteiros."
    end
  end
end

# Obtém as duas listas do usuário
lista1 = obter_lista
lista2 = obter_lista

# Chama a função e armazena o resultado
resultado = soma_indices_pares(lista1, lista2)

# Exibe o resultado
puts resultado.join(',')
