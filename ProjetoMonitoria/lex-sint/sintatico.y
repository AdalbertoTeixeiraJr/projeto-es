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

%token IF ELSE WHILE DO NOT MINUS PLUS MULT DIV APAREN FPAREN BEG END ATRIB TYPE_INT MAIN ANDBIT ORBIT PTVIR DPT INTERROG
%token <strval> RELOP
%token <strval> LOGOP
%token <strval> INT
%token <strval> ID

%type <strval> literalNum multOp addOp unaOp nomeDecl literalId andOrBit ptvir operadorAtribuicao
%%



programa	:	MAIN BEG comando END
		|	/* vazio */;
comando		:	expressao ptvir
		|	ptvir
		|	comandoComposto	
		|	comandoIf
		|	comandoWhile
		|	comandoDo
		;
comandoComposto	:	declaracao comando
		;	
declaracao	:	tipoDeclaracao nomeDecl ptvir 
		;
tipoDeclaracao	:	TYPE_INT
		;
nomeDecl	:	ID {printf("VRI %s\n",$1);}
		;
expressao	:	expressaoAtribuicao
		|	comando expressaoAtribuicao
		;
expressaoAtribuicao:	logicaOuExpressao
		|	expressaoUnaria operadorAtribuicao{printf("%s\n",$2);} logicaOuExpressao
		;
operadorAtribuicao:	ATRIB{$$="=";} 
		;
logicaOuExpressao:	expressaoUnaria
		|	expressaoUnaria LOGOP {printf("%s\n",$2);} logicaOuExpressao
		|	expressaoUnaria RELOP {printf("%s\n",$2);} logicaOuExpressao
		|	expressaoUnaria andOrBit {printf("%s\n",$2);} logicaOuExpressao
		|	expressaoUnaria addOp {printf("%s\n",$2);} logicaOuExpressao
		|	expressaoUnaria multOp {printf("%s\n",$2);}logicaOuExpressao 
		;
expressaoUnaria	:	literalId {printf("%s\n",$1);} 
		|	literalNum{printf("%s\n",$1);}
		|	APAREN expressao FPAREN
		|	unaOp{printf("%s\n",$1);} expressaoUnaria
		;
addOp		:	PLUS {$$="+";} | MINUS {$$="-";}
		;
multOp		: 	MULT {$$="*";} | DIV {$$="/";}
		;
unaOp		:	NOT {$$="!";} | MINUS {$$="-";}
		;
andOrBit	:	ANDBIT {$$="&";} | ORBIT{$$="|";}
		;
literalNum	:	INT {$$=$1;}
		;
literalId	:	ID {$$=$1;}
		;
ptvir		:	PTVIR {$$=";";}
		;
comandoIf	:	IF APAREN expressao FPAREN comando ELSE comando ptvir
		|	IF APAREN expressao FPAREN comando ptvir
		;
comandoWhile	:	WHILE APAREN expressao FPAREN comando ptvir
		;
comandoDo	:	DO comando WHILE APAREN expressao FPAREN
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

