#!/bin/sh

#ARGUMENTOS
# $0 – contém o nome do script que foi executado;
# $1 … $n – contêm os argumentos na ordem em que foram passados (1º argumento em $1, 2º argumento em $2, etc.).
# $# - contém o número de argumentos que foi passado (ou seja, não considera o nome do script em $0);
# $* - retorna todos os argumentos de uma vez só.

if [ $# -lt 1 ]
then
    echo "Pelo menos um argumento deve ser fornecido"
    exit 1
fi 

echo "número de argumentos passado: $#"
i=0
for argumento in $*
do
    i=$(($i + 1))
    echo "$i argumento passado: $argumento"
done