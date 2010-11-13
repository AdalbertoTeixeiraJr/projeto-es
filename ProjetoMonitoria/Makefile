

file=testes/1.c

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

testes:
	./test

clean: 
	rm -rf *.c *.txt *.fail *~

