require '/CRUD/functions'

def menu
  puts("\n===== GERENCIAMENTO DE ESTOQUE =====\n")
  puts("1 - Adicionar Produto\n2 - Listar Produtos\n3 - Remover Produto\n4 - Editar Produto\n0 - Sair")
  print("Digite uma opção:")
end

def main
  loop do

    menu

    begin
        op_string = gets.chomp
        op = Integer(op_string)

        if op == 1
          adicionar_produto
        elsif op == 2
          listar_produtos
        elsif op == 3
          print("Digite o ID do produto que deseja remover:")
          id_produto = gets.chomp
          remover_produto(id_produto)
        elsif op == 4
          print("Digite o ID do produto que deseja remover:")
          id_produto = gets.chomp
          editar_produto(id_produto)
        elsif op == 0
          puts("Encerrando o programa...")
          break
        else
          puts("Numero Inválido")
          end
    rescue ArgumentError
        puts("Digite apenas Numeros")
    rescue Exception => e
      puts("Error:#{e}")
    end
  end
end

MAIN