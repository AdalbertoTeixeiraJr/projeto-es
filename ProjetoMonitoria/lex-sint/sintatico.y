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

%type <strval> literalNum multOp addOp unaOp nomeDecl operadorAtribuicao literalId andOrBit interrog dpt ptvir literalIdpt literalNumpt
%%



programa	:	MAIN comando
		;
comando		:	expressao ptvir
		|	ptvir 
		|	comandoComposto	
		|	comandoIf
		|	comandoWhile
		|	comandoDo
		;
comandoComposto	:	BEG comando END
		|	BEG declaracao END
		|	BEG END
		;	
declaracao	:	tipoDeclaracao nomeDecl ptvir
		|	declaracao comando
		;
tipoDeclaracao	:	TYPE_INT
		;
nomeDecl	:	ID {printf("VRI VRI %s _ _ \n",$1);}
		;
expressao	:	expressaoAtribuicao
		;
expressaoAtribuicao:	 expressaoCondicional
		|	 expressaoUnaria operadorAtribuicao{printf("%s ",$2);} expressaoCondicional
		;
operadorAtribuicao:	ATRIB{$$="ATR ";}
		;
expressaoCondicional:	logicaOuExpressao
		|	logicaOuExpressao interrog{printf("%s\n",$2);} expressao dpt {printf("%s ",$2);} logicaOuExpressao
		;
logicaOuExpressao:	expressaoUnaria
		|	expressaoUnaria LOGOP {printf("%s ",$2);} expressaoUnaria
		|	expressaoUnaria RELOP {printf("%s ",$2);} expressaoUnaria
		|	expressaoUnaria andOrBit {printf("%s ",$2);} expressaoUnaria
		|	expressaoUnaria addOp {printf("%s ",$2);}expressaoUnaria
		|	expressaoUnaria multOp {printf("%s ",$2);}expressaoUnaria
		;
expressaoUnaria	:	literalIdpt {printf("%s _ _ \n",$1);} 
		| 	literalNumpt{printf("%s _ _ \n",$1);}
		|	literalNum{printf("%s ",$1);}
		|	APAREN expressao FPAREN
		|	unaOp{printf("%s ",$1);} expressaoUnaria
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
literalNumpt	:	literalNum ptvir
		;
literalId	:	ID {$$=$1;}
		;
literalIdpt	:	literalId ptvir
		;
interrog	:	INTERROG {$$="?";}
		;
dpt		:	DPT {$$=":";}
		;
ptvir		:	PTVIR {$$=";";}
		;
comandoIf	:	IF APAREN expressao FPAREN comando ELSE comando
		|	IF APAREN expressao FPAREN comando ptvir
		;
comandoWhile	:	WHILE APAREN expressao FPAREN comando
		;
comandoDo	:	DO comando WHILE APAREN expressao FPAREN ptvir
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

