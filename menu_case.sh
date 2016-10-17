#!/bin/bash

# menu_case.sh
# Exemplo de construção de um menu textual.

# Inicia um loop infinito, reimprimindo o menu a cada seleção.
while :
do
	# Usando o comando 'echo' para montar as estrutura do menu.
	echo '1) Opção 1'
	echo '2) Opção 2'
	echo '3) Opção 3'
	echo '4) Sair'
	
	# Aguarda o número da opção.
	read -p 'Opção: ' OPCAO
	
	# Seleciona a opção referente ao valor armazenado na variável 'OPCAO'
	case $OPCAO in
		1)
			# Opção 1
			echo 'Escolheu opção 1'
			;;
		2)
			# Opção 2
			echo 'Escolheu opção 2'
			;;
		3)
			# Opção 3
			echo 'Escolheu opção 3'
			;;
		4)
			# Opção 4
			# Finaliza o script
			exit 0
			;;
		*)
			# Nenhuma das opções.
			# Imprime a mensagem de erro se o valor for inválido.
			echo 'Opção inválida'
			;;
	esac
done
# FIM
