#!/bin/sh

# operações matematica smp entre parênteses
a=$((10/2))
echo "$a"
# Variaveis
user=$(whoami)
time=$(uptime)
dir=$(pwd)
system_info=$(df -h)

echo "Seu nome de usuário é: $user" 
echo "Informações de hora atual e tempo que o pc esta ligado: $time" 
echo "O script esta sendo executado no diretório: $dir" 
echo "Informações sobre o sistema: $system_info"

# Recebendo entrada do usuario
echo "Diz ai uma musica seu otario:"
read musica
echo "Sera que $musica presta?"

# IF-ELSE
echo "Digite um numero positivo:"
read num
if [ $num -gt 0 ] 
then
    echo "$num é positivo meexmo"
elif [ $num -lt 0 ]
then
    echo "eu disse positivo seu otario"
else 
    echo "huuum metido a sabido você né"
fi

#n string1: o comprimento de string1 é diferente de 0;
#z string1: o comprimento de string1 é zero;
#string1 = string2: string1 e string2 são idênticas;
#string1 != string2: string1 e string2 são diferentes;
#inteiro1 -eq inteiro2: inteiro1 possui o mesmo valor que inteiro2;
#inteiro1 -ne inteiro2: inteiro1 não possui o mesmo valor que inteiro2;
#inteiro1 -gt inteiro2: inteiro1 é maior que inteiro2;
#inteiro1 -ge inteiro2: inteiro1 é maior ou igual a inteiro2;
#inteiro1 -lt inteiro2: inteiro1 é menor que inteiro2;
#inteiro1 -le inteiro2: inteiro1 é menor ou igual a inteiro2;
#e nome_do_arquivo: verifica se nome_do_arquivo existe;
#d nome_do_arquivo: verifica se nome_do_arquivo é um diretório;
#f nome_do_arquivo: verifica se nome_do_arquivo é um arquivo regular (texto, imagem, programa, docs, planilhas).

# CASE
# FUNÇÕES
main(){
    echo "Selecione uma opção:"
    echo "1 - Exibir data e hora do sistema"
    echo "2 - Exibir o resultado da divisão 10/2"
    echo "3 - Exibir uma mensagem"                                                      
    read opcao
    case $opcao in
        1)
            data=$(date +"%T, %d/%m/%y, %A")
            echo "$data"
        ;;
        2)
            result=$((10/2))
            echo "divisao de 10/2 = $result"
        ;;
        3)
            echo "Informe o seu nome:"
            read nome;
            echo "Bem-vindo ao mundo do shell script, $nome!"
        ;;
    esac
}
main

esvaziar_lixeira(){
    echo "Esvaziando a lixeira..."
    path="${HOME}/.local/share/Trash/files"  
    cd "$path"
    for file in *
    do
        rm -rf "$file"
    done
    echo "Done!"
}

#LOOPS 
#FOR
for i in $(seq 1 1 5)
do
    echo "$i"
done
#WHILE
j=1
while [ $j -le 5 ]
do
    echo "$j"
    j=$(($j + 1))
done

