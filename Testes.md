Para rodar os testes é preciso executar o arquivo test e os testes deverão ter os nomes como numeros inteiros e de forma sequencial, por exemplo: 1.c, 2.c, 3.c .... Os testes serão realizados de forma sequencial, começando sempre do arquivo de número 1.c ate o número n.c. Esse n será solicitado logo quando da execução do script test.
A cada realização de testes será impresso "Files file1 and file2 are identical" (isso mostra que o teste passou), ou "./test: linha n: 2626 Segmentation Fault" junto com o arquivo testado, mostrando as diferenças nos arquivos.

Exemplo:
./test
Digite o número do teste final: 5  //Os teste irão rodar desde o 1 ate o teste 5 em sequencia.


Exemplo quando o teste não passou:

```
Teste 10 

Erro Sintatico:

        Linha 7, Coluna 8

        Ultimo token lido: ANDBIT - &

Nao Concluido possui erro lexico ou sintatico

mv: cannot stat `sint_out.c': No such file or directory

./test: line 18: 10182 Segmentation fault      ./semantico/semantico.bin > testing.txt

0a1,15

> LDI R0, 0

> LDI R1, 0

> ST R0, R1

> LDI R0, 1

> LDI R1, 1

> ST R0, R1

> LDI R0, 2

> LDI R3, 0

> LD R1, R3

> LDI R3, 1

> LD R2, R3

> AND R1, R1, R2

> LDI R2, 2

> AND R1, R1, R2

> ST R0, R1
```




Exemplo quando o teste passou:

```
Teste 3

./test: line 18: 10130 Segmentation fault      ./semantico/semantico.bin > testing.txt

Files testing.txt and testes/saida_ass/3.ass are identical
```