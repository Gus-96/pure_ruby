#Lista de Cliente
clientes = []

#Menu de Opções
loop do
    puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n                                                           
    Seja Bem-vindo ao Goliath National Bank!
     
    1. Listar Todas as Contas
    2. Criar Conta Corrente
    3. Consultar Saldo
    4. Realizar Depósito
    5. Realizar Saque
    6. Realizar Transferência
    7. Encerrar Conta
    8. Sair"
    
    puts "\n"
    print "O que você precisa? "
    opcao = gets.chomp.to_i

    case opcao
    when 1
        # Verificar se existe alguma conta e lista todas
        puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n"                                                        
        puts "\n"
        if clientes.any? == false
            puts "Nenhuma Conta Cadastrada!"
        else
            puts clientes
        end
        puts "\n"  
        
    when 2
        # Cria uma nova conta e armazena no array clientes
        conta_corrente = Hash.new
        print "Digite seu nome: "
        conta_corrente[:nome] = gets.chomp
        print "Digite seu cpf: "
        conta_corrente[:cpf] = gets.chomp
        print "Digite a senha: "
        conta_corrente[:senha] = gets.chomp
        conta_corrente[:saldo] = 0
        clientes.push(conta_corrente)
        puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n"                                                        
        puts "\n"
        puts "Conta criada com sucesso !"
        puts "\n"
        
  
    when 3
        # Consulta Saldo do cliente com base no CPF
        print "Digite o CPF vinculado a conta: "
        cpf = gets.chomp.to_s
        print "Digite sua senha: "
        senha = gets.chomp.to_s

        puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n"                                                        
        puts "\n"
        arr = clientes.select{|i| i[:cpf] == cpf}
        hash = Hash[*arr]
        if hash[:cpf] == cpf && hash[:senha] == senha
            puts "Usuário Autenticado com Sucesso !"
            puts "Seu saldo é de R$ #{hash[:saldo]}"
        else 
            puts "CPF e / ou Senha estão incorretos. Por favor, tente novamente."
        end
        puts "\n"
  
    when 4
        print "Digite o CPF vinculado a conta: "
        cpf = gets.chomp.to_s
        print "Digite sua senha: "
        senha = gets.chomp.to_s

        puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n"                                                        
        puts "\n"
        arr = clientes.select{|i| i[:cpf] == cpf}
        hash = Hash[*arr]
        if hash[:cpf] == cpf && hash[:senha] == senha
            puts "Usuário Autenticado com Sucesso !"
            puts "Seu saldo é de R$ #{hash[:saldo]}"
            print "Digite o valor do deposito: "
            deposito = gets.chomp.to_i
            hash[:saldo] =  hash[:saldo] + deposito
            clientes.delete_if { |h| h[:cpf] == cpf }
            clientes.push(hash)
            puts "Deposito Realizado com sucesso!" 
            puts "Seu saldo é de R$ #{hash[:saldo]}"
        else 
            puts "CPF e / ou Senha estão incorretos. Por favor, tente novamente."
        end
        puts "\n"
    
    when 5
        # Realiza Saque         
        print "Digite o CPF vinculado a conta: "
        cpf = gets.chomp.to_s
        print "Digite sua senha: "
        senha = gets.chomp.to_s
        
        puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n"                                                        
        puts "\n"
        arr = clientes.select{|i| i[:cpf] == cpf}
        hash = Hash[*arr]
        if hash[:cpf] == cpf && hash[:senha] == senha
            puts "Usuário Autenticado com Sucesso !"
            puts "Seu saldo é de R$ #{hash[:saldo]}"
            print "Digite o valor do saque: "
            saque = gets.chomp.to_i

            if saque > hash[:saldo]
                puts "Valor solcitado excede saldo em conta."
            else
                hash[:saldo] =  hash[:saldo] - saque
                clientes.delete_if { |h| h[:cpf] == cpf }
                clientes.push(hash)
                puts "Saque Realizado com sucesso!" 
                puts "Seu saldo é de R$ #{hash[:saldo]}"
            end
        else 
            puts "CPF e / ou Senha estão incorretos. Por favor, tente novamente."
        end 
        puts "\n"
           
    when 6
        print "Digite o CPF vinculado a conta: "
        cpf = gets.chomp.to_s
        print "Digite sua senha: "
        senha = gets.chomp.to_s
        puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n"                                                        
        puts "\n"
        arr = clientes.select{|i| i[:cpf] == cpf}
        hash = Hash[*arr]
        if hash[:cpf] == cpf && hash[:senha] == senha
            puts "Usuário Autenticado com Sucesso !"
            print "Digite o CPF vinculado a conta que deseja transferir: "
            cpf_transferencia = gets.chomp.to_s
            if arr_transferencia = clientes.select{|i| i[:cpf] == cpf_transferencia}
                hash_transferencia = Hash[*arr_transferencia]
                print "Digite o valor da transferencia: "
                valor_transferencia = gets.chomp.to_i
                if valor_transferencia > hash[:saldo]
                    puts "Valor informado excede saldo em conta."
                else
                    hash[:saldo] =  hash[:saldo] - valor_transferencia
                    clientes.delete_if { |h| h[:cpf] == cpf }
                    clientes.push(hash)
                    hash_transferencia[:saldo] = hash_transferencia[:saldo] + valor_transferencia
                    clientes.delete_if { |h| h[:cpf] == cpf_transferencia }
                    clientes.push(hash_transferencia)
                    puts "Tranferencia Realizada com sucesso!" 
                    puts "Seu saldo é de R$ #{hash[:saldo]}"
                end
            else 
                puts "CPF e / ou Senha estão incorretos. Por favor, tente novamente."
            end
        else
            puts "CPF de destino invalido. Por favor, tente novamente."   
        end
        puts "\n"

    when 7 
        #Exclui Conta
        print "Digite o CPF vinculado a conta: "
        cpf = gets.chomp.to_s
        print "Digite sua senha: "
        senha = gets.chomp.to_s
        
        puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n"                                                        
        puts "\n"
        arr = clientes.select{|i| i[:cpf] == cpf}
        hash = Hash[*arr]
        if hash[:cpf] == cpf && hash[:senha] == senha
            puts "Conta encerrada com sucesso!"
            clientes.delete_if { |h| h[:cpf] == cpf }
        else 
            puts "CPF e / ou Senha estão incorretos. Por favor, tente novamente."
        end
        puts "\n"
                
    when 8
        #Finaliza a sessão
        puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n"                                                        
        puts "\n"
        puts "Obrigado por confiar no Goliath National Bank!"
        puts "\n"
        puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n"    
        puts "\n"                                                    

    break
    end
end