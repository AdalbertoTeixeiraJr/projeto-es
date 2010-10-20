

file=testes/01.c

complete: lex_sint semantico
	

lex_sint_compile:
	cd lex-sint
	make clean
	make 
	cd ..

lex_sint: $(file)
	./runCompiler.sh $(file) 
	 

semantico:
	cd semantico
	./semantico.bin > assembly.txt

clean: 
	rm -rf *.c *.txt *.fail

