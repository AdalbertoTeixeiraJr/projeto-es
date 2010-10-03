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

%token IF ELSE WHILE DO NOT MINUS PLUS MULT DIV APAREN FPAREN BEG END ATRIB TYPE_INT MAIN ANDBIT ORBIT PTVIR
%token <strval> RELOP
%token <strval> LOGOP
%token <strval> INT
%token <strval> ID

%type <strval> literalNum multOp addOp unaOp nomeDecl

%%



programa	:	MAIN BEG comando END
		;
comando		:	expressao PTVIR
		|	PTVIR
		|	comandoComposto	
		|	comandoIf
		|	comandoWhile
		;
comandoComposto	:	BEG comando END
		|	BEG declaracao END
		|	BEG END
		;	
declaracao	:	TYPE_INT nomeDecl PTVIR
		;
nomeDecl	:	ID {printf("VRI %s\n",$1);}
		;
expressao	:	expressaoAtribuicao
		;
expressaoAtribuicao:	expressaoCondicional
		|	expressaoUnaria ATRIB expressaoCondicional
		;
expressaoCondicional:	logicaOuExpressao
		|	logicaOuExpressao '?' expressao ':' logicaOuExpressao
		;
logicaOuExpressao:	expressaoUnaria
		|	expressaoUnaria LOGOP expressaoUnaria
		|	expressaoUnaria RELOP expressaoUnaria
		|	expressaoUnaria ORBIT expressaoUnaria
		|	expressaoUnaria ANDBIT expressaoUnaria
		|	expressaoUnaria addOp expressaoUnaria
		|	expressaoUnaria multOp expressaoUnaria
		;
expressaoUnaria	:	ID
		|	literalNum
		|	APAREN expressao FPAREN
		|	unaOp expressaoUnaria
		;
addOp		:	PLUS {$$="+";}| MINUS {$$="-";}
		;
multOp		: 	MULT {$$="*";}| DIV {$$="/";}
		;
unaOp		:	NOT {$$="!";}| MINUS {$$="-";}
		;
literalNum	:	INT {$$=$1;}
		;
comandoIf	:	IF APAREN expressao FPAREN comando ELSE comando
		|	IF APAREN expressao FPAREN comando PTVIR
		;
comandoWhile	:	WHILE APAREN expressao FPAREN comando
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

