#!/bin/bash

# O comando 'select' é especifico para criação de menu textual.
# sua sintaxe é semelhante a um 'for', onde todos os itens são 
# informados para execução do loop.
# Exemplo: select opcao in item1 item2 item3 ...
# Os itens são enumerados e com isso a estrutura do menu é criada.
select OPCAO in 'opcao1' 'opcao2' 'opcao3' 'sair'
do
	# Lê a opção selecionada.
	# A valor da opção é literal não sendo referenciada numericamente.
	case $OPCAO in
		opcao1)
			echo "Você escolheu:" $OPCAO	
			;;
		opcao2)
			echo "Você escolheu:" $OPCAO
			;;
		opcao3)
			echo "Vocẽ escolheu:" $OPCAO
			;;
		sair)
			# Finaliza o script
			exit 0
			;;
	esac
done
# FIM
