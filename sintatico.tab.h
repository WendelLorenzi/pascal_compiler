/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_SINTATICO_TAB_H_INCLUDED
# define YY_YY_SINTATICO_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    S_ID = 258,                    /* S_ID  */
    S_NUMERO = 259,                /* S_NUMERO  */
    S_PROGRAM = 260,               /* S_PROGRAM  */
    S_PONTO = 261,                 /* S_PONTO  */
    S_PONTOVG = 262,               /* S_PONTOVG  */
    S_VIRGULA = 263,               /* S_VIRGULA  */
    S_DOISPONTOS = 264,            /* S_DOISPONTOS  */
    S_BEGIN = 265,                 /* S_BEGIN  */
    S_END = 266,                   /* S_END  */
    S_VAR = 267,                   /* S_VAR  */
    S_IF = 268,                    /* S_IF  */
    S_THEN = 269,                  /* S_THEN  */
    S_ELSE = 270,                  /* S_ELSE  */
    S_WHILE = 271,                 /* S_WHILE  */
    S_DO = 272,                    /* S_DO  */
    S_REPEAT = 273,                /* S_REPEAT  */
    S_UNTIL = 274,                 /* S_UNTIL  */
    S_WRITE = 275,                 /* S_WRITE  */
    S_ATRIB = 276,                 /* S_ATRIB  */
    S_MAIS = 277,                  /* S_MAIS  */
    S_MENOS = 278,                 /* S_MENOS  */
    S_VEZES = 279,                 /* S_VEZES  */
    S_DIVI = 280,                  /* S_DIVI  */
    S_MAIORQUE = 281,              /* S_MAIORQUE  */
    S_MENORQUE = 282,              /* S_MENORQUE  */
    S_IGUAL = 283,                 /* S_IGUAL  */
    S_DIFERENTE = 284,             /* S_DIFERENTE  */
    S_ABREPAR = 285,               /* S_ABREPAR  */
    S_FECHAPAR = 286,              /* S_FECHAPAR  */
    S_ABRECHAVES = 287,            /* S_ABRECHAVES  */
    S_FECHACHAVES = 288,           /* S_FECHACHAVES  */
    S_TINTEGER = 289,              /* S_TINTEGER  */
    S_TBOOLEAN = 290,              /* S_TBOOLEAN  */
    S_OR = 291,                    /* S_OR  */
    S_MAIORIGUAL = 292,            /* S_MAIORIGUAL  */
    S_MENORIGUAL = 293,            /* S_MENORIGUAL  */
    S_NOT = 294,                   /* S_NOT  */
    S_AND = 295,                   /* S_AND  */
    S_FOR = 296,                   /* S_FOR  */
    S_TO = 297,                    /* S_TO  */
    S_RECORD = 298,                /* S_RECORD  */
    S_STRING = 299,                /* S_STRING  */
    S_INTEGER = 300,               /* S_INTEGER  */
    S_BOOL = 301,                  /* S_BOOL  */
    S_TYPE = 302                   /* S_TYPE  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_SINTATICO_TAB_H_INCLUDED  */
