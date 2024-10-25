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

loop do
  puts 'Informe duas listas com números de mesmo tamanho'
  puts 'Primeira lista, use espaço para separar os números'
  lista1 = gets.split.map(&:to_i) # Lê e converte os números da primeira lista
  puts 'Segunda lista, use espaço para separar os números'
  lista2 = gets.split.map(&:to_i) # Lê e converte os números da segunda lista

  resultado = []

  # Verifica se as listas têm o mesmo tamanho
  if lista1.length == lista2.length
    lista1.each_with_index do |elemento, index|
      if index.even? # Verifica se o índice é par
        resultado << (elemento + lista2[index]) # Soma os elementos
      end
    end
    
    # Exibe o resultado formatado
    resultado_formatado = resultado.join(", ")
    puts "Resultado: #{resultado_formatado}"
  else 
    puts 'A lista informada não teve o mesmo tamanho'
  end

  # Condição para sair do loop (exemplo)
  puts 'Deseja continuar? (s/n)'
  resposta = gets.chomp.downcase
  break if resposta != 's' # Sai do loop se a resposta não for 's'
end
