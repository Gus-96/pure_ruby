# \n nova linha
# .chomp é um método que remove o código de formatação \n do elemento que foi aplicado.
# gets pegar uma string do teclado (get -> sTRING)
# .inspect especiona a variavel que foi aplicado
# Código abaixo realiza um input de uma string.  
print 'Digite seu nome: '
nome = gets.chomp
# .to_x transformar o tipo da dado da váriavel, a ação é chamda de 'Coerção/ Cast / Casting'
# .round(2) modifca o float para 2 casas decimais
# Codigo abaixo realiza um imput de uma string transforma em float calcula o aumento de 10%
puts 'Digite seu salário:'
sal = gets.chomp.to_f.round(2)
aumento = sal * 0.10
sal_atualizado = sal * 1.10
print 'Parabéns ' + nome + ' você acabou de ganhar R$ %0.02f' % aumento.round(2)
puts ' de aumento! Seu salário atualizado é de R$ %0.02f' % sal_atualizado.round(2)