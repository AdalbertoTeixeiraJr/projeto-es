#! /bin/bash

tmp=/tmp


if [ $# -lt 1 ]; then
	echo "Numero errado de argumentos"
	echo "use $! <arquivos Linguagem C>"
	exit 1
fi

rm -f ${tmp}/*.fail
# analise files
for i in $@; do
	# prepara ambiente removendo arquivos antigos
	out=$(basename $i)
	rm -f ${out}
	# realiza a analise
	echo "Iniciando analise lexica/sintatica do arquivo $i"
	cat $i | lex-sint/compiler 1> sint_out.c
	# verifica ocorrencia de falha lexica/sintatica
	if [ $? -eq 0 ]; then
		echo "Pode iniciar analise semantica e geracao de codigo do arquivo $i"
	else
		echo "Não Concluido possui erro lexico ou sintatico"
		mv sint_out.c sint_out.fail
	fi
done
