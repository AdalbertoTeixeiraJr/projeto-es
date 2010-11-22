/*
*Analisador lexico
*UFCG - DSC - LES 2010.2
*Compilador para o processador intel x86 demonstrado no livro Mano&Kime
*Autores:
* Adalberto Teixeira
* Andrey Menezes
* Daniel Lucena
*/
%{
#include "tk.h"
#include "tkvalues.h"
#include <string.h>
extern char* yytext;
extern int col; //inicializado no sintatico
extern int line; //inicializado no sintatico
int yyerror(char *msg);
void updateCol();
void updateLine();

%}

coldelimi      [ \t\r]
linedelimi     [\n]
digito         [0-9]
int            0*[0-7]
letra          [A-Za-z]
id             {letra}+({letra}|{digito})*
relop          "<"|">"|"=="|"!="|"<="|">="

%%

{coldelimi}+        {updateCol();}
{linedelimi}        {updateLine();}
if                  {updateCol();return IF;}
else                {updateCol();return ELSE;}
while               {updateCol();return WHILE;}
"{"                 {updateCol();return BEG;}
"}"                 {updateCol();return END;}
"!"                 {updateCol();return NOT;}
"-"                 {updateCol();return MINUS;}
"+"                 {updateCol();return PLUS;}
"("                 {updateCol();return APAREN;}
")"                 {updateCol();return FPAREN;}
"="                 {updateCol();return ATRIB;}
"&"                 {updateCol();return ANDBIT;}
"|"                 {updateCol();return ORBIT;}
"int"               {updateCol();return TYPE_INT;}
"main" 	            {updateCol();return MAIN;}
";"                 {updateCol();return PTVIR;}
"io"		    {updateCol();return IO;}	
{relop}             {updateCol();yylval.strval = strdup(yytext);return RELOP;}
{id}                {updateCol();yylval.strval = strdup(yytext);return ID;}
{int}               {updateCol();yylval.strval = strdup(yytext);return INT;}
%%

void updateLine(){
   //atualiza a linha atual e reseta a coluna
   line++;
   col = 1;
}

void updateCol(){
   //atualiza a coluna atual
   col += yyleng;
}

