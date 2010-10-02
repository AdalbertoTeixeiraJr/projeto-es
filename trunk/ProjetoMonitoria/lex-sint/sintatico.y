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

programa	:	MAIN bloco
		;
bloco		:	BEG comandos END
		;
comandos	:	comando comandos
		|	/*vazio*/;
comando		:	declaracao
		| 	atribuicao 
		|	expressaoC
		;
declaracao	:	TYPE_INT nomeDecl PTVIR
		;
nomeDecl	:	ID {printf("VRI %s\n",$1);}
		;
atribuicao	:	ID ATRIB literalNum PTVIR
		|	ID ATRIB ID PTVIR
		;
expressaoC	:	expressaoLogica
		;
expressaoLogica	: 	expressaoRelacional
		|	expressaoRelacional LOGOP expressaoLogica 
		;
expressaoRelacional:	expressaoAditiva
		|	expressaoAditiva RELOP expressaoRelacional
		;
expressaoAditiva:	expressaoMult
		|	expressaoMult addOp  expressaoAditiva
		;
addOp		:	PLUS {$$="+";}| MINUS {$$="-";}
		;
expressaoMult	:	expressaoUnaria
		|	expressaoUnaria multOp expressaoMult
		;
multOp		: 	MULT {$$="*";}| DIV {$$="/";};
expressaoUnaria	:	expressaoPrimaria 
		|	unaOp expressaoPrimaria PTVIR
		;
unaOp		:	NOT {$$="!";}| MINUS {$$="-";}
		;
expressaoPrimaria:	literalNum
		|	APAREN expressaoC FPAREN
		|	expressaoIf
		|	expressaoWhile
		;
literalNum	:	INT {$$=$1;}
		;
expressaoIf	:	IF APAREN expressaoC FPAREN bloco ELSE bloco PTVIR
		|	IF APAREN expressaoC FPAREN bloco PTVIR;
expressaoWhile	:	WHILE APAREN expressaoC FPAREN bloco PTVIR
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

