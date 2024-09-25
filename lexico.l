%{
#include <stdio.h>	
#include "sintatico.tab.h" 
int nlinha=1;
%}

%%


program			{return S_PROGRAM;}
"."			{return S_PONTO;}
";"			{return S_PONTOVG;}
","			{return S_VIRGULA;}
":"			{return S_DOISPONTOS;}
begin			{return S_BEGIN;}
end			{return S_END;}
var			{return S_VAR;}
if			{return S_IF;}
then			{return S_THEN;}
else			{return S_ELSE;}
while			{return S_WHILE;}
repeat			{return S_REPEAT;}
until			{return S_UNTIL;}
do			{return S_DO;}
write			{return S_WRITE;}
and			{return S_AND;}
or			{return S_OR;}
not			{return S_NOT;}
for			{return S_FOR;}
to			{return S_TO;}
record		{return S_RECORD;}
string		{return S_STRING;}
integer		{return S_INTEGER;}
boolean		{return S_BOOL;}
type 		{return S_TYPE;}
":="			{return S_ATRIB;}
"+"			{return S_MAIS;}
"-"			{return S_MENOS;}
"*"			{return S_VEZES;}
"/"			{return S_DIVI;}
">"			{return S_MAIORQUE;}
"<"			{return S_MENORQUE;}
"="			{return S_IGUAL;}
">="		{return S_MAIORIGUAL;}
"<="		{return S_MENORIGUAL;}
"<>"			{return S_DIFERENTE;}
"("			{return S_ABREPAR;}
")"			{return S_FECHAPAR;}
"{"			{return S_ABRECHAVES;}
"}"			{return S_FECHACHAVES;}
[ \t]			/* ignora */
[\n]			{nlinha++;}
[a-z][a-z0-9]*		{return S_ID;}
[0-9]+			{return S_NUMERO;}
<<EOF>>			{return 0;}
.			{
			printf("Símbolo [%s] desconhecido.\n",yytext);
			printf("Linha: %d\n",nlinha);
			exit(1);
			}

