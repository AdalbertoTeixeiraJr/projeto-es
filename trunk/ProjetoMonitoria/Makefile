

file=testes/2.c

complete: lex_sint semantico
	

lex_sint_compile: cd lex-sint
		make clean
		make 
		cd ..

lex_sint: $(file)
	./runCompiler.sh $(file) 
	 

semantico: 
	./semantico/semantico.bin 

testes:	
	./test

clean: 
	rm -rf *.c *.txt *.fail *~

