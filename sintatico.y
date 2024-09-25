%{
#include <stdio.h>
#include "lexico.c"
void yyerror(const char *msg);
int yywrap();
%}

/*------------------------------------------------
 | Simbolos terminais da linguagem Pascal Simples 
 +------------------------------------------------*/

%start programa
%expect 1

%token 	S_ID
%token	S_NUMERO
%token  S_PROGRAM
%token 	S_PONTO
%token	S_PONTOVG
%token  S_VIRGULA
%token  S_DOISPONTOS
%token	S_BEGIN
%token	S_END
%token 	S_VAR
%token	S_IF
%token	S_THEN
%token	S_ELSE
%token	S_WHILE
%token	S_DO
%token	S_REPEAT
%token	S_UNTIL
%token	S_WRITE
%token	S_ATRIB
%token	S_MAIS
%token 	S_MENOS
%token	S_VEZES
%token 	S_DIVI
%token	S_MAIORQUE
%token	S_MENORQUE
%token	S_IGUAL
%token	S_DIFERENTE	
%token	S_ABREPAR
%token 	S_FECHAPAR
%token	S_ABRECHAVES
%token	S_FECHACHAVES
%token	S_TINTEGER
%token	S_TBOOLEAN
%token	S_OR
%token	S_MAIORIGUAL
%token	S_MENORIGUAL
%token	S_NOT
%token	S_AND
%token	S_FOR
%token	S_TO
%token	S_RECORD
%token	S_STRING
%token	S_INTEGER
%token	S_BOOL
%token  S_TYPE

%%
/*--------------------------------------------------
 | produções sintáticas da linguagem Pascal Simples
 +--------------------------------------------------*/

programa
	:S_PROGRAM S_ID S_PONTOVG S_VAR variaveis corpo S_PONTO
	| S_PROGRAM S_ID S_PONTOVG  corpo S_PONTO
;

variaveis:
	variaveis  listaDeIdentificadores S_DOISPONTOS tipo  S_PONTOVG
	| listaDeIdentificadores S_DOISPONTOS tipo S_PONTOVG 
	| variaveis registro
	| registro
;

registro:
	 S_TYPE tipo_registro
;

tipo_registro:
    S_ID S_IGUAL S_RECORD campo_lista S_END S_PONTOVG
;

campo_lista:
  campo_def
  | campo_lista campo_def
;

campo_def:
  S_ID S_DOISPONTOS tipo S_PONTOVG
;

tipo:
  S_STRING
  | S_INTEGER
  | S_BOOL
  | S_ID
;

listaDeIdentificadores: 
	listaDeIdentificadores S_VIRGULA S_ID 
	| S_ID
;

corpo
	: S_BEGIN seq_comandos S_END
;

seq_comandos
	:seq_comandos S_PONTOVG comando 
	|comando
;

comando
	:atribuicao
	|instIF 
	|instWhile
	|instRepeat
	|instWrite
    |istrFor
	|bloco
	| /* vazio */
;
bloco:
	S_BEGIN
	seq_comandos
	S_END
;

istrFor:
  S_FOR atribuicao S_TO S_NUMERO S_DO comando

instIF:
	S_IF S_ABREPAR expressaoL S_FECHAPAR S_THEN comando alternativa
; 

alternativa: S_ELSE comando
  | /*vazio */ 
;

atribuicao
	:  S_ID S_ATRIB expressaoL 
;
instWhile: 
	S_WHILE S_ABREPAR expressaoL S_FECHAPAR S_DO comando
;
instRepeat:
	S_REPEAT comando S_UNTIL expressaoL
;
instWrite:
	S_WRITE S_ABREPAR lista_variaveis S_FECHAPAR S_PONTOVG
;
lista_variaveis:
	lista_variaveis S_VIRGULA S_ID
	|S_ID
;

expressaoL:
	expressaoL S_OR expressaoNot
    |expressaoL S_AND expressaoNot
    |expressaoNot
;

expressaoNot:
  S_NOT expressaoR
  |expressaoR
  ;
	
	
expressaoR:
	expressaoR S_MAIORQUE expressao
	|expressaoR S_MENORQUE expressao
	|expressaoR S_IGUAL expressao
	|expressaoR S_DIFERENTE expressao 
    |expressaoR S_MAIORIGUAL expressao
    |expressaoR S_MENORIGUAL expressao
	| expressao
;
	

expressao:
	expressao S_MAIS termo 
	| expressao S_MENOS termo 
	| termo; 
;

termo:
	termo S_VEZES fator 
	| termo S_DIVI fator 
	| fator
;

fator: 
	S_ABREPAR expressao S_FECHAPAR
	| S_ID 
	| S_NUMERO
;
	

%%
int yywrap(){return 1;}

void yyerror(const char *msg){
	printf("Erro sintatico\n");
}

int main(int argc, char **argv){
	
	//Abre o arquivo argv[1] para leitura
	yyin = fopen(argv[1],"r");
	
          printf("RODANDO COMPILADOR PASCAL SIMPLIFICADO...\n\n\n");
	if( !yyparse() ){
		printf("Compilação terminada. Programa correto.\n");
	}
	else{
		printf("Erro de compilação\n");
		printf("Linha:[%d]\n",nlinha);
	}
	fclose(yyin);
}



























