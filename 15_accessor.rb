class Pessoa
    attr_accessor :nome
end

p1 = Pessoa.new
p1.nome = 'Jose' #setter
p1.nome = 'Joao' #setter
p1.nome = 'Augusto' #setter
puts p1.nome # getter