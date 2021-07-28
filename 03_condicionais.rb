# Codigo abaixo verifica o sexo escolhido atraves de comparações
# || simpoliza o 'or'
# && simboliza o 'e'
print 'Digite seu gênero: '
sexo = gets.chomp
if sexo == 'feminino' || sexo == 'Feminino' || sexo == 'FEMININO' || sexo == 'f' || sexo == 'F'
   puts 'O gênero "Feminino" foi registrado com sucesso!'
   else
      puts 'O gênero "Masculino" foi salvo com sucesso!'
end
# Estruturas Condicional Ternária
# <condição> ? <verdadeiro> : <falso>
# Solução alternativa em 1 linha
#(sexo == 'm' || sexo == 'M') ? (puts 'Masculino') : (puts 'Feminino')


# Verificar a faixa etária da idade informada
print 'Digite sua idade: '
idade = gets.chomp.to_i
case idade
when 0..2
   puts 'Você é um bebê'
when 3..9
   puts 'Você é uma criança'
when 10 .. 12 
   puts 'Você é um pré adolescente'
when 13..18
   puts 'Você é um adolescente'
else
   puts 'Você é jovem ainda!'
end

# if elsif else 
print 'Digite seu número da sorte: '
y = gets.chomp.to_i
if y > 2 
   puts "O número informado é maior que 2"
elsif y < 2
   puts "O número informado é menor que 2"
else
   puts "O número informado é igual a 2"
end