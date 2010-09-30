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

%type <strval> nomeDecl expressaoIf expressaoUna expressaoMult expressaoAditiva expressaoLogica literalNum multiOp addOp unaOp


%%

programa:		MAIN BEG comando END;
comando: 		declaracao comando
		| 	atribuicao comando 
		|	expressaoC comando
		|	/*vazio*/;
declaracao:		TYPE_INT nomeDecl PTVIR;
nomeDecl:		ID {printf("VRI %s\n",$1);};
atribuicao: 		ID ATRIB literalNum PTVIR;
expressaoC:		expressaoLogica
;
expressaoLogica: 	expressaoRelacional
		|	expressaoRelacional LOGOP expressaoLogica {printf("VOB::%d,%d::\n",line,col);} 
;
expressaoRelacional:	expressaoAditiva
		|	expressaoMult addOp expressaoAditiva {printf("VON::%d,%d::\n",line,col);} 
;
expressaoAditiva:	expressaoMult;
addOp:			PLUS {$$="+";}| MINUS {$$="-";};
expressaoMult:		expressaoUna
		|	expressaoUna multiOp {printf("_CA::%d,%d::%s\n",line,col,$2);} expressaoMult {printf("VON\%d,%d::\n",line,col);}
;
multiOp:	 	MULT {$$="*";}| DIV {$$="/";};
expressaoUna:		unaOp {printf("CRP::%d,%d::\n",line,col);}exprPrima {printf("VOU::%d,%d::%s\n",line,col,$1);};
unaOp: 			NOT {$$="!";}| MINUS {$$="-";};
exprPrima:		literalNum {printf("_CA::%d,%d::%s\n",line,col,$1);}
		|	APAREN {printf("_CA::%d,%d::(\n",line,col);} expressaoC FPAREN{printf("_CA::%d,%d::)\n",line,col);} 
		| 	expressaoIf{printf("IF::%d,%d::(\n",line,col);}
		|	expressaoWhile{printf("WHILE::%d,%d::(\n",line,col);};
expressaoIf:		IF APAREN expressaoC FPAREN BEG expressaoC END ELSE BEG expressaoC END PTVIR
		|	IF APAREN expressaoC FPAREN BEG expressaoC END PTVIR;
expressaoWhile:		WHILE APAREN expressaoC FPAREN BEG expressaoC END PTVIR;
literalNum:		INT {printf("PIN::%d,%d::%s\n",line,col,$1); $$=$1;};


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

