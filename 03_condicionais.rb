# Codigo abaixo dentifica o sexo escolhido atraves de comparações
# || simpoliza o 'or'
# && simboliza o 'e'
puts 'Digite seu genero: '
sexo = gets.chomp
if sexo == 'feminino' || sexo == 'Feminino' || sexo == 'FEMININO' || sexo == 'f' || sexo == 'F'
   puts 'Feminino'
   else
      puts 'Masculino'
end

# Estruturas Condicional Ternária
# <condição> ? <verdadeiro> : <falso>
# Solução alternativa em 1 linha
#(sexo == 'm' || sexo == 'M') ? (puts 'Masculino') : (puts 'Feminino')


# Verificar a faixa etária da idade informada
print 'Digite uma idade:'
idade = gets.chomp.to_i
case idade
when 0..2
   puts 'bebê'
when 3..9
   puts 'criança'
when 10 .. 12 
   puts 'pré adolescente'
when 13..18
   puts 'adolescente'
else
   puts 'você é jovem ainda!'
end


# unless / 'a menos que ...'
print 'Digite um número:'
x = gets.chomp.to_i
unless x >= 2
  puts 'x é menor que 2'
else
  puts 'x é maior que 2'
end