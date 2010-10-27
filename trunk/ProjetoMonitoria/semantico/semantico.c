//Gera o assembly do arquivo de entrada

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

FILE *sint_out;
int indice = 0;
char ids[7][16]; // EDA onde guardamos as ids das variaveis, a posicao que esta no array indica a posicao que ficara na memoria do processador
char valor[16];
char variavel[16] = "";
char numero[16] = "";
char operacao[16] = "";
char ptovirg[1] = "";
char igual[1] = "";
  

void declaracao();
void atribuicao(int, int);
int retornaID(char);

int main()
{

  int k;
  for(k = 0; k < 7; k++) {
    int l;
    for(l = 0; l < 16; l++){
 	ids[k][l] = 0;
    }
  }
  
  sint_out = fopen("sint_out.c", "r");

  if (!sint_out) {
    printf("Arquivo nao pode ser aberto ou nao existe.");
    //exit(1);
  }

  while(!feof(sint_out)) {
    fscanf(sint_out," %s\n", operacao);
    
    printf("operacao: %s\n", operacao);
    
    //VRI = verifica identificador
    if(strcmp(operacao,"VRI")==0){
    	declaracao();
    }

    //ATR = atribuicao
    else if(retornaID(operacao)!=-1) {
    	printf("LDI R0, %d\n", retornaID(operacao));
	fscanf(sint_out," %s\n", igual);
	if(strcmp(igual,"=")!=0){
		printf("Faltando '='\n");
		exit(1);
	}
	
	fscanf(sint_out," %s\n", valor);
	if(strcmp(valor,"NUM")==0){
		int neg = 0;
		fscanf(sint_out," %s\n", numero);
		if(strcmp(numero,"-")==0){
			neg = 1;
			fscanf(sint_out," %s\n", numero);
			if(atoi(numero) >= 0 && atoi(numero) < 7){
				printf("LDI R1, %s\n", numero);
				printf("NOT R1, R1\n");
				printf("ST R0,R1\n");	
			}else{
				printf("Valor %s fora do intervalo [-7:7].\n", numero);
			}
		}
		else if(atoi(numero) >= 0 && atoi(numero) < 7){
			printf("LDI R1, %s\n", valor3);
			printf("ST R0,R1\n");	
		}else{
			printf("Variavel %s fora do intervalo [-7:7].\n", numero );
			exit(1);
		}
	}
	else if(strcmp(valor,"VAR")==0){
	
	}
	/*
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

 /*   //ATRV: Atribuicao de variavel a outra variavel
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
    }   */

  } 

  fclose(sint_out);
}


void declaracao(){
	printf("declaracao\n");
	fscanf(sint_out," %s\n", variavel);
	printf("var: %s\n",variavel);
	fscanf(sint_out," %s\n", ptovirg);
	printf("po: %s\n",ptovirg,"\n");
        int j;
	if(indice >= 7){
		printf("So e permitido declarar 7 variaveis.\n");
		exit(1);
	}
	
	if(retornaID(variavel)!=-1){
		printf("Variavel %s ja declarada!\n", variavel);
                exit(1);
	}
        strcpy(ids[indice],variavel);
        indice+=1;
	
	if(strcmp(ptovirg,";")!=0){
		printf("Faltando ';'\n");
		exit(1);
	}
}

void atribuicao(int var, int valor){
	printf("LDI R0, %d\n", var);
	printf("LDI R1, %s\n", valor);
	printf("ST R0,R1\n");	
}

int retornaID(char var){
	for(j=0;j<indice+1;j++) {
        	if(strcmp(ids[j], variavel) == 0) {
			return j;
	}
	return -1;
}
