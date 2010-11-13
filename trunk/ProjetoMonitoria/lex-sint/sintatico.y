/*
*Analisador Sintático
* UFCG - DSC - LES 2010.2
* Autores:
* Adalberto Teixeira
* Andrey Menezes
* Daniel Pires
*/

%{
#include <stdio.h>
#include <string.h>
#include "tkvalues.h"
int yylex(void); //funcao do lexico para retornar o token
int yyerror(char *msg); //funcao de erro (sobrescrita)
int line = 1; //declarado no lexico
int col  = 0; // declarado no lexico
char* yytext = ""; //declarado no lexico
%}

%union {
	char* strval;
}

%token IF ELSE WHILE NOT MINUS PLUS APAREN FPAREN BEG END ATRIB TYPE_INT MAIN ANDBIT ORBIT PTVIR ATR_LOG
%token <strval> RELOP
%token <strval> INT
%token <strval> ID

%type <strval> literalNum addOp nomeDecl literalId andOrBit ptvir operadorAtribuicao notOpLog notOpArit
%%

programa	:	MAIN BEG comandos END
		;
comandos	:	comando comandos
		|	/*vazio*/
		;
comando		:	expressao 
		|	declaracao ptvir 
		|	ptvir
		;
declaracao	:	tipoDeclaracao nomeDecl 
		;
tipoDeclaracao	:	TYPE_INT
		;
nomeDecl	:	ID {printf("VRI\n%s\n",$1);}
		;
expressao	:	{printf("ATR\n");} literalId operadorAtribuicao expressaoResult
		;
expressaoResult:	expressaoAritmetica 
		|	expressaoLogica 
		;
operadorAtribuicao:	ATRIB {printf("=\n");} 
		;
expressaoLogica	:	literal andOrBit literal 
		|	literal andOrBit expressaoLogica 
		|	aparen expressaoLogAninhada fparen 
		|	aparen expressaoLogAninhada fparen andOrBit expressaoLogica
		|	notOpLog literal 
		| 	notOpLog expressaoLogica
		;
expressaoLogAninhada:	literal andOrBit literal
		|	literal andOrBit expressaoLogAninhada
		|	notOpLog literal
		| 	notOpLog expressaoLogAninhada
		;
aparen		: 	APAREN {printf("(\n");}
		;
fparen		: 	FPAREN {printf(")\n");}
		; 
notOpLog	:	NOT {printf("!\n");}
		;
notOpArit	:	MINUS {printf("-\n");}
		;
expressaoAritmetica:	literal	
		|	literal addOp expressaoAritmetica	
		|	notOpArit expressaoAritmetica
		| 	aparen expressaoAritAninhada fparen 
		|	aparen expressaoAritAninhada fparen addOp expressaoAritmetica
		;
expressaoAritAninhada:	literal
		|	literal addOp expressaoAritAninhada
		|	notOpArit expressaoAritAninhada
		;
literal		:	literalId
		|	literalNum
		;
addOp		:	PLUS {printf("+\n");} 
		| 	MINUS {printf("-\n");}
		;
andOrBit	:	ANDBIT {printf("&\n");}
		| 	ORBIT {printf("|\n");}
		;
literalNum	:	INT {$$=$1;printf("NUM\n%s\n",$1);}
		;
literalId	:	ID {$$=$1;printf("VAR\n%s\n",$1);}
		;
ptvir		:	PTVIR {printf(";\n");}
		;
%%

int main(void) {
	yydebug=0;
	return yyparse();
}

//funcao de erro - imprime linha e coluna do erro sintatico
int yyerror(char *msg){
	int tk = YYTRANSLATE(yychar);
	if(strcmp("syntax error", msg) == 0){
		msg = "Erro Sintatico";
	}
	fprintf(stderr,"%s:\n",msg);
	fprintf(stderr,"\tLinha %d, Coluna %d\n", line, col);
	fprintf(stderr,"\tUltimo token lido: %s - %s\n",yytname[tk],yytext);
	return 1;
}

