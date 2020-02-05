#!/bin/sh

if [ $# -lt 3 ]
then 
    echo "Por gentileza, passar os argumentos requeridos, na seguinte ordem"
    echo "Por favor, passar o caminho do arquivo a ser executado"
    echo "Por favor, passar o nome do arquivo"
    echo "Por favor, passar linha de comando para execução do arquivo (excluindo o nome do arquivo)"
    exit 1
fi 

path=$1
file_name=$2
executor=$3

execute(){

    cd ~
    cd $path
    pwd
    $executor $file_name
}

execute 