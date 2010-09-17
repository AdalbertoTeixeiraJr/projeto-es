/*
*Analisador Sintático
* UFCG - DSC - LES 2010.2
* Autores:
* Adalberto Teixeira
* Andrey Menezes
* Daniel Pires
*/
%{
#include "tkvalues.h"
#include <string.h>
#include <stdio.h>
int yylex(void); //funcao do lexico para retornar o token
int yyerror(char *msg); //funcao de erro (sobrescrita)
int line = 1; //declarado no lexico
int col  = 0; // declarado no lexico
char* yytext = ""; //declarado no lexico
%}

%union {
 char* strval;
}

%token IF ELSE WHILE DO NOT MINUS PLUS MULT DIV APAREN FPAREN BEGIN END ATRIB TYPE_INT MAIN ANDBIT ORBIT
%token <strval> RELOP
%token <strval> LOGOP
%token <strval> INT
%token <strval> ID



%%

programa:		MAIN BEGIN END;


%%

int main(void) {
yydebug=0;
return yyparse();
}
int yyerror(char *msg){
//funcao de erro - imprime linha e coluna do erro sintatico
int tk = YYTRANSLATE(yychar);
if(strcmp("syntax error", msg) == 0){
msg = "Erro Sintatico";
}
fprintf(stderr,"%s:\n",msg);
fprintf(stderr,"\tLinha %d, Coluna %d\n", line, col);
fprintf(stderr,"\tUltimo token lido: %s - %s\n",yytname[tk],yytext);
return 1;
}
