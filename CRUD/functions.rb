$produtos = Array.new

def adicionar_produto
  print("\n===== ADICIONANDO PRODUTO =====\n")
  begin
    id = '00' + String(gerar_codigo)

    print("Nome do produto:")
    nome = gets.chomp
    if nome == ""
      puts("Nome não podes ser vazio")
      return
    end

    print("Preço do produto:")
    preco = Float(gets.chomp)

  rescue ArgumentError
    print("Error: Digite apenas numeros")
    return
  end

  produto = {
    id:id,
    nome: nome,
    preco: preco,
  }
  $produtos.push(produto)
  puts("ID:#{produto[:id]} Produto #{produto[:nome]} adicionado com sucesso!")
end

def gerar_codigo
  if $produtos.length == 0
    return 1
  else
    return $produtos.last[:id]+1
  end
end

def verifica_tamanho_lista
  if $produtos.length == 0
    print("\nLista de produtos vazia\n")
    return
  end
end

def listar_produtos
  print("\n===== LISTANDO PRODUTOS =====\n")
  verifica_tamanho_lista
  $produtos.each do |produto|
    print("ID:#{produto[:id]} - Nome:#{produto[:nome]} - Preço:#{produto[:preco]}\n")
  end
end

def remover_produto(id_produto)
  print("\n===== REMOVENDO PRODUTOS =====\n")
  verifica_tamanho_lista
  $produtos.each do |produto|
    if id_produto == produto[:id]
      $produtos.delete(produto)
      print("ID:#{produto[:id]} - Nome:#{produto[:nome]} - Preço:#{produto[:preco]}\nDeletado com sucesso")
    end
  end
end

def editar_produto(id_produto)
  print("\n===== EDITARNDO PRODUTO =====\n")
  verifica_tamanho_lista
  $produtos.each do |produto|

    print("ID:#{produto[:id]} - Nome:#{produto[:nome]} - Preço:#{produto[:preco]}\nEncontrado com sucesso\n")

    print("Digite o nome atualizado:")
    nome = gets.chomp
    produto[:nome] = nome

    print("Digite o novo preço:")
    preco = Float(gets.chomp)
    produto[:preco] = preco

    print("\nID:#{produto[:id]} - Nome:#{produto[:nome]} - Preço:#{produto[:preco]}\nAtualizado com sucesso\n")
  end
end

