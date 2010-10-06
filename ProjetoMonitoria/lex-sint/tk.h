
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IF = 258,
     ELSE = 259,
     WHILE = 260,
     DO = 261,
     NOT = 262,
     MINUS = 263,
     PLUS = 264,
     MULT = 265,
     DIV = 266,
     APAREN = 267,
     FPAREN = 268,
     BEG = 269,
     END = 270,
     ATRIB = 271,
     TYPE_INT = 272,
     MAIN = 273,
     ANDBIT = 274,
     ORBIT = 275,
     PTVIR = 276,
     DPT = 277,
     INTERROG = 278,
     RELOP = 279,
     LOGOP = 280,
     INT = 281,
     ID = 282
   };
#endif
/* Tokens.  */
#define IF 258
#define ELSE 259
#define WHILE 260
#define DO 261
#define NOT 262
#define MINUS 263
#define PLUS 264
#define MULT 265
#define DIV 266
#define APAREN 267
#define FPAREN 268
#define BEG 269
#define END 270
#define ATRIB 271
#define TYPE_INT 272
#define MAIN 273
#define ANDBIT 274
#define ORBIT 275
#define PTVIR 276
#define DPT 277
#define INTERROG 278
#define RELOP 279
#define LOGOP 280
#define INT 281
#define ID 282




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 21 "sintatico.y"

	char* strval;



/* Line 1676 of yacc.c  */
#line 112 "tk.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


