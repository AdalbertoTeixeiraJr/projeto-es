//Gera o assembly do arquivo de entrada

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
  FILE *sint_out;
  int index = 0;
  char lexico[128][16] ; // EDA onde guardamos as ids das variaveis, a posicao que esta no array indica a posicao que ficara na memoria do processador
  char valor1[16], valor2[16], valor3[16], valor4[16], valor5[16];
  char operacao[16] = "";
  char temp[16] = "START";
  char temp2[16] = ""; 

  int k;
  for(k = 0; k < 128; k++) {
    int l;
    for(l = 0; l < 16; l++){
 	lexico[k][l] = 0;
    }
  }
  sint_out = fopen("sint_out.c", "r");

  if (!sint_out) {
    //printf("Arquivo nao pode ser aberto ou nao existe.");
    //exit(1);
  }

  while(!feof(sint_out)) {
    fscanf(sint_out," %s %s %s %s %s", valor1, valor2, valor3, valor4, valor5);
/*    printf("valor1: %s\n", valor1);
    printf("valor2: %s\n", valor2);
    printf("valor3: %s\n", valor3);
    printf("valor4: %s\n", valor4);
    printf("valor5: %s\n", valor5); */
    
    //VRI = verifica identificador
    if(strcmp(valor1,"VRI")==0){
        int j;
        for(j=0;j<index+1;j++) {
            if(strcmp(lexico[j], valor3) == 0) {
                printf("Variavel %s ja declarada!\n", valor2);
                exit(1);
            }
        }
        strcpy(lexico[index],valor3);
        index+=1;
    }

    //ATR = atribuicao
    else if((strcmp(valor2,"ATR")==0) && (strcmp(valor4,"_")==0)) {
        int j;
	int found = 0;
        for(j=0;j<index+1;j++) {
	    
            if((strcmp(lexico[j], operacao) == 0) && (found == 0)) {
		found = 1;
                printf("LDI R0, %d\n", j);
		if(atoi(valor3) >= -3 && atoi(valor3) <= 3){
			printf("LDI R1, %s\n", valor3);
			printf("ST R0,R1\n");	
		}else{
			printf("Variavel %s fora do intervalo\n",valor3 );
			exit(1);
		}
            } 
	}
	if(found == 0){
        	printf("Variavel %s nao declarada!\n", valor1);
        	exit(1);
	}
    }

    //ATRV: Atribuicao de variavel a outra variavel
    else if(strcmp(valor2,"ATRV")==0) {
	int j;
	int found = 0;
	int found2 = 0;
        for(j=0;j<index+1;j++) {
	   if((strcmp(lexico[j], valor1) == 0) && (found == 0)) {
		found = 1;
		printf("LDI R0, %d\n", j);
		int k;
		for(k=0; k<index+1;k++) {
			if((strcmp(lexico[k], valor3) == 0) && (found2 == 0)) {
				found2 = 1;
				printf("LDI R1, %d\n", k);
				printf("LD R2, R1\n");
				printf("ST R0, R2\n");
			}
		}
	   }
	}
	if(found == 0) {
		printf("Variavel %s nao declarada!\n", valor1);
        	exit(1);
	}else if(found2 == 0) {
		printf("Variavel %s nao declarada!\n", valor3);
        	exit(1);
	}	
    }
    
    //AND = and bit a bit
    else if((strcmp(valor4,"&") == 0) && (strcmp(valor2,"ATR") == 0)){
	int found = 0;
	int found2 = 0;
	int found3 = 0;
        int j;
        for(j=0;j<index+1; j++){
            if(strcmp(lexico[j],valor1) == 0) {
		found = 1;
                printf("LDI R0 , %d\n",j);
		if(atoi(valor3) >= -3 && atoi(valor3) <= 3){
			printf("LDI R1, %s\n", valor3);	
			found2 = 1;
		}else{
			printf("Variavel %s fora do intervalo\n",valor3 );
			exit(1);
		}
		int k;
		for(k=0; k<index+1;k++) {
			if((strcmp(lexico[k], valor3) == 0) && (found2 == 0)) {
				found2 = 1;
				printf("LDI R1, %d\n", k);
				printf("LD R1, R1\n");
			}
		}
		if(atoi(valor5) >= -3 && atoi(valor5) <= 3){
			printf("LDI R2, %s\n", valor5);	
			found3 = 1;
		}else{
			printf("Variavel %s fora do intervalo\n",valor5 );
			exit(1);
		}
		for(k=0; k<index+1;k++) {
			if((strcmp(lexico[k], valor5) == 0) && (found3 == 0)) {
				found2 = 1;
				printf("LDI R2, %d\n", k);
				printf("LD R2, R2\n");
			}
		}
		printf("AND R3, R1, R2\n");
		printf("ST R0, R3\n");
            }
        }
	if(found == 0){
		printf("Variavel %s nao esta declarada!\n", valor1);
		exit(1);	
	}
	if(found2 == 0){
		printf("Variavel %s nao esta declarada!\n", valor3);
		exit(1);	
	}	
	if(found3 == 0){
		printf("Variavel %s nao esta declarada!\n", valor5);
		exit(1);	
	}		
    }
    //Operacao Invalida
    else{
	printf("Operacao: %s %s %s %s %s\n", valor1,valor2,valor3,valor4,valor5);
	exit(1);
    }   

  }

  fclose(sint_out);
}
