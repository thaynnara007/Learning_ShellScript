#!/bin/sh

dir=$(pwd)
INPUT_DIR="$dir/input"
CREATE_DIR="$dir/create"

echo "$INPUT_DIR and $CREATE_DIR"
check_dirs(){

    echo "Verificando existencia de diretorios requeridos..."
    if [ ! -d $INPUT_DIR ] || [ ! -d $CREATE_DIR ]
    then 
        echo "Por favor, configurar diretorios requeridos"
    else
        echo "Diretorios encontrados"
    fi
}

create_table(){

    #$1 -> Nome do script de criação de tabela a ser executado

    file=$1
    cd $CREATE_DIR
    
    echo "Verificando existencia do arquivo passado como argumento..."
    if [ ! -e file ]
    then
        echo "Arquivo $file inexistente"
    else
        echo "Arquivo encontrado"
    fi
    
    echo "Executando script..."
    sqlplus > @$file
}

create_tables(){

    cd $CREATE_DIR

    echo "Executando scripts..."
    for file in *.sql
    do
        echo "Executando $file .."
        sqlplus > @$file
    done
}

input_data_table(){

    #$1 -> nome da tabela a ser populada
    
    table=$1
    cd "$INPUT_DIR/table"
    #----------------
    #inserção na tabela com base nos arquivos do diretorio
    #-----------------
}

input_data_all(){

    cd $INPUT_DIR

    for dir in *
    do 
        if [ -d $dir ]
        then
            cd $dir
            input_data_table $dir
        else
            echo "$dir não é um diretório"
        fi
    done
}


