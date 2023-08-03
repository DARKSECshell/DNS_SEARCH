#!/bin/bash
#DEVELOPER DARKSEC

if [ "$3" == "" ]
then
# INTERAÇÃO COM USUARIO E A FORMA DE UTILIZAR A FERRAMENTA
	echo "====================================================================="
	echo "	USE DESSA FORMA: ./$0 xbox.com -w <WORDLISTS>		   "
	echo "	EXEMPLO /$0 xbox.com -w /lista2/teste_wordlists.txt         "
	echo "ESSA FERRAMENTA É UM BRUTE FORCE DE DNS, IRÁ PROCURAR POR SUBDOMINIOS"
	echo "ATENÇÃO! SE QUISER USAR OUTRAS WORDLISTS COLOQUEM ELAS NA PASTA LISTA"
	echo "====================================================================="
else

# INICIANDO O BRUTE FORCE
echo "|==========================================================|"
echo "|INICIANDO O BRUTE FORCE ESPERE ATÉ APARECER OS SUBDOMINIOS|"
echo "|==========================================================|"
echo " ________  ________   ________           ________  _______   ________  ________  ________  ___  ___     "
echo " |\   ___ \|\   ___  \|\   ____\         |\   ____\|\  ___ \ |\   __  \|\   __  \|\   ____\|\  \|\  \    "
echo " \ \  \_|\ \ \  \\ \  \ \  \___|_        \ \  \___|\ \   __/|\ \  \|\  \ \  \|\  \ \  \___|\ \  \\\  \   "
echo "  \ \  \ \\ \ \  \\ \  \ \_____  \        \ \_____  \ \  \_|/_\ \   __  \ \   _  _\ \  \    \ \   __  \  "
echo "   \    \_\\ \ \  \\ \  \|____|\  \        \|____|\  \ \  \_|\ \ \  \ \  \ \  \\  \\ \  \____\ \  \ \  \ "
echo "    \ \_______\ \__\\ \__\____\_\  \         ____\_\  \ \_______\ \__\ \__\ \__\\ _\\ \_______\ \__\ \__\ "
echo "     \|_______|\|__| \|__|\_________\       |\_________\|_______|\|__|\|__|\|__|\|__|\|_______|\|__|\|__|"
echo "                         \|_________|       \|_________|                                                 "

# RODANDO A WORDLISTS E USANDO O PARAMETRO QUE O USUARIO ESCOLHER NO CASO $1
for dns in $(cat $3);
do
host $dns.$1 | egrep -v "IPv6|NXDOMAIN|empty|not|timed" 2> /dev/null;
done
echo "|==========================================|"
echo "|TERMINOU OBRIGADO POR USAR A FERRAMENTA :)|"
echo "|==========================================|"
fi
#FINALIZANDO O SCRIPT
