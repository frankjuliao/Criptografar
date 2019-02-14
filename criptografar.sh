#########################################################
#	NOME: CRYPTOGRAFAR SCRIPT			#
#	OBJETIVO: Criptografar scripts em Base64	#
#	DATA: 16/12/2018				#
#	VERSAO: 1.0					#
#	AUTOR: FRANKLINALDO SILVA			#
#	CONTATO: FRANK.JULIAO@HOTMAIL.COM		#
######################################################### 																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												#!/bin/bash
echo "Escolha uma opcao: "
echo ""
echo "[1] Crypt
[0] Exit"
read opcao
if [ $opcao = 1 ]; then
	echo -n "Digite o caminho do arquivo: ";read caminho
	echo -n "Digite o nome do novo arquivo: ";read nome_final
	echo "#!/bin/bash" > $nome_final
	echo "echo '$(base64 $caminho)' | base64 -d | sh" >> $nome_final
	chmod +x $nome_final
elif [ $opcao = 0 ]; then
	exit 0
else
	echo "Comando não existe"
	exit 0
fi
