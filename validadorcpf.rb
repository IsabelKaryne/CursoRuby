require "cpf_cnpj"

puts'Gostaríamos de saber se seu CPF é válido. Gentileza, digite o seu cpf'
cpf = gets.chomp()

resultado = CPF.valid?(cpf)

if resultado
    puts "O seu #{cpf} é válido"
else
    puts "O seu #{cpf} é inválido"
end
