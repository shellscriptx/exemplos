#!/bin/bash

# Sortendo aleatoriamente uma linha no arquivo.
# random_item.sh
# Criado por: x_SHAMAN_x

# Verifica se o arquivo existe e se nao esta vazio.
if [ ! -s "$1" ]; then
	echo "Arquivo está vazio ou não existe." 1>&2
	exit 1
fi

# Obtendo o total de linhas do arquivo.
TOTAL_LINHAS=$(cat "$1" | wc -l)

# Para imprimir uma linha aleatória do arquivo, eu vou precisar utilizar a variável de ambiente '$RANDOM'
# que gera números randomicos, mas o número gerado pode variar de 1 à 32560. Isso pode ser um problema dependendo
# do número de linhas do arquivo que estiver trabalhando. Para resolver, vamos aplicar uma regra de 3.
NUM_LINHA=$(($RANDOM % $TOTAL_LINHAS + 1)) # O metacaractere '%' (módulo) ele é semelhante ao metacaractere '/' (dividir), porém
									   # ele imprime o resto da divisão.
									   # Vamos montar um exemplo com um arquivo que contenha 5 linhas e vamos aplicar a regra
									   # 1450 - Número randomico
									   # 5    - Total de linhas
									   # +1   - Para escapar do valor 0
								       #
									   # 1450 % 4 = 0 -> resto da divisão
								       #		    0+1 = 1 -> número da linha


# Imprime o conteúdo referente ao número da linha.
# -n - Suprime a impressão automatica do buffer padrão
# p - Imprime espaço padrão
sed -n $NUM_LINHA'p' "$1"
# FIM
