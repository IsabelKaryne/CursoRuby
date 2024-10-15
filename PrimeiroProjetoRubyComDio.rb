print('Informe o seu nome completo')
nome_completo = gets.chomp()

puts("#{nome_completo.split[0]} é a sua idade")
idade = gets.chomp.to_i

Puts("#{nome_completo} tem #{idade} anos")
