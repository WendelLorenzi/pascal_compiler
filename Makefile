all: gera compila 
gera:
	bison -d sintatico.y
	flex -i -o lexico.c lexico.l
	bison sintatico.y

compila:
	gcc sintatico.tab.c -o sintatico

teste:
	./sintatico ./test/programa.pas
apaga:    
	rm -f sintatico.tab.h
	rm -f lexico.c
	rm -f sintatico.tab.c
	rm -f sintatico
	clear
                
