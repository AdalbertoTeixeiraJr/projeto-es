# Compila o Lexico e o Sintatico.
#
CC	= gcc
IFLAGS	= -I .
CFLAGS  = -std=gnu99
LEX     = flex
YACC    = bison -y
REPORT  = --report=all --report-file=../sint-report.txt 
lexico 	= lexico
sintatico = sintatico
tk	= tk.h
    
compiler: $(sintatico).o $(lexico).o 
	$(CC) $(CFLAGS) $(IFLAGS) -o $@ $^ -ll 

$(sintatico).o: $(sintatico).y
	$(YACC) -t --define=$(tk) -o$(sintatico).c $^
	$(CC) $(CFLAGS) -o $@ -c $(sintatico).c

$(lexico).o: $(lexico).yy
	$(LEX) -o$(lexico).c $^
	$(CC) $(CFLAGS) -o $@ -c $(lexico).c

clean:
	rm -f *.o *.c *~ compiler
