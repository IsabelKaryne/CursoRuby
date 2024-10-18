lista_de_numeros = []
resultado = []
puts'digite três números separados por espaço'
lista_de_numeros = gets.split()

lista_de_numeros.each do |numero|
    numero_potencia = numero.to_i ** 3
    resultado << numero_potencia
end
puts"#{resultado}"
