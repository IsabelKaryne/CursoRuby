loop do
    puts'Calculadora - Escolha uma opção abaixo'
    puts'1 - Soma'
    puts'2 - Subtração'
    puts'3 - Divisão'
    puts'4 - Descobrir o resto em uma divisão'
    puts'0 - Deixar de usar a calculadora'
    puts'Digite a sua opção'
    opcao = gets.chomp.to_i
    
    break if opcao == 0
    puts'Informe o primeiro número'
    numero1 = gets.chomp.to_i

    puts'Informe o segundo número'
    numero2 = gets.chomp.to_i


    if opcao == 1 
        soma = numero1+numero2
        puts "A soma dos números #{numero1} e #{numero2} é #{soma}"
    elsif opcao == 2
        subtracao = numero1-numero2
        puts "A subtração dos números #{numero1} e #{numero2} é #{subtracao}"
    elsif opcao == 3
        divisao = numero1/numero2
        puts "A divisao dos números #{numero1} e #{numero2} é #{divisao}"
    elsif opcao == 4
        soma = numero1%numero2
        puts "O resto da divisão dos números #{numero1} e #{numero2} é #{divisao}"
    else
        puts 'Informou uma opção no qual não ofertamos'
    end
    system "clear"
end
