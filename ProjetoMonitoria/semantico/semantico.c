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
char operador[16] = "";
char tipo[16] = "";
char ptovirg[1] = "";
char igual[1] = "";
  

void declaracao();
int retornaID(char*);
void carregaNumero(char* reg);
void carregaVariavel(char* reg);
void carregaNumeroLog(char* reg);
void carregaVariavelLog(char* reg);
void atribuicao_arit();
void atribuicao_log();

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
    
    //printf("operacao: %s\n", operacao);
    
    //VRI = verifica identificador
    if(strcmp(operacao,"VRI")==0){
    	declaracao();
    }

    //ATR_ARIT = atribuicao (operacao aritmetica)
    else if(strcmp(operacao,"ATR_ARIT")==0){
	atribuicao_arit();
    }

    //ATR_LOG = atribuicao (operacao logica)
    else if(strcmp(operacao,"ATR_LOG")==0){
	atribuicao_log();
    }
  }
  
  exit(1);

}


void declaracao(){
	//printf("declaracao\n");
	fscanf(sint_out," %s\n", variavel);
	//printf("var: %s\n",variavel);
	fscanf(sint_out," %s\n", ptovirg);
	//printf("po: %s\n",ptovirg,"\n");
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

void atribuicao_arit(){
	fscanf(sint_out," %s\n", variavel);
	if(retornaID( variavel)!=-1){
    		printf("LDI R0, %d\n", retornaID(variavel));
	}else{
		printf("Variavel %s nao declarada!\n",variavel);
		exit(1);
	}
	fscanf(sint_out," %s\n", igual);
	if(strcmp(igual,"=")!=0){
		printf("Faltando '='\n");
		exit(1);
	}	
	fscanf(sint_out," %s\n", tipo);			
	if(strcmp(tipo,"NUM")==0){
		//printf("Carr Numero\n");
		carregaNumero("R1");
	}else if(strcmp(tipo,"VAR")==0){		
		//printf("Carr Var\n");
		carregaVariavel("R1");
	}else{
		printf("Codigo com erros, nao pode ser gerado.");
		exit(1);
	}
	//printf("Ler arquivo\n");
	fscanf(sint_out," %s\n", operador);	
	//printf("Vou entrar no While operador: %s\n", operador);

	while ((strcmp(operador,"+")==0) || (strcmp(operador,"-")==0) ){
		//printf("Tou no while\n");
		fscanf(sint_out," %s\n", tipo);			
		if(strcmp(tipo,"NUM")==0){
			carregaNumero("R2");
		}else if(strcmp(tipo,"VAR")==0){
			carregaVariavel("R2");
		}else{
			printf("Codigo com erros, nao pode ser gerado.");
			exit(1);
		}
		if(strcmp(operador,"+")==0){
			printf("ADD R1, R1, R2\n");
		}else{
			printf("SUB R1, R1, R2\n");
		}
		if(!feof(sint_out)){
			//printf("Entrei no if\n");
			fscanf(sint_out," %s\n", operador);
		}else{
			printf("Faltando ';'.\n");
			exit(1);
		}
	} 
	if(strcmp(operador,";")!=0){
		if(strcmp(operador,"")==0){
			printf("Esta faltando ';'\n");
			exit(1);
		}else{	
			printf("Operador '%s' nao e valido.\n",operador);
			exit(1);
		}
	}

	printf("ST R0, R1\n");

}

void carregaNumero(char* reg){
	int neg = 0;
	fscanf(sint_out," %s\n", numero);
	//printf("%s\n",numero);
	if(strcmp(numero,"-")==0){ 		//Numero Negativo
		//printf("Numero neg\n");		
		neg = 1;
		fscanf(sint_out," %s\n", numero);
		if(atoi(numero) >= 0 && atoi(numero) < 7){
			printf("LDI %s, %s\n", reg, numero);
			printf("NOT %s, %s\n", reg, reg);	
		}else{
			printf("Valor %s fora do intervalo [-7:7].\n", numero);
		}
	}
	else if(atoi(numero) >= 0 && atoi(numero) < 7){		// Numero Positivo
		printf("LDI %s, %s\n", reg, numero);
	}else{
		printf("Variavel %s fora do intervalo [-7:7].\n", numero );
		exit(1);
	}
}

void carregaVariavel(char* reg){
	int neg = 0;
	fscanf(sint_out," %s\n", variavel);
	if(strcmp(numero,"-")==0){				
		neg = 1;		
		fscanf(sint_out," %s\n", variavel);
	}

	if(retornaID(variavel)!= -1){
		printf("LDI R3, %i\n", retornaID(variavel));
		printf("LD %s, R3\n", reg);
		if(neg == 1){
			printf("NOT %s, %s\n",reg, reg);
		}
	}

	else{
		printf("Variavel %s nao existe.\n",variavel);
		exit(1);
	}
	
}

void atribuicao_log(){
	fscanf(sint_out," %s\n", variavel);
	if(retornaID( variavel)!=-1){
    		printf("LDI R0, %d\n", retornaID(variavel));
	}else{
		printf("Variavel %s nao declarada!\n",variavel);
		exit(1);
	}
	fscanf(sint_out," %s\n", igual);
	if(strcmp(igual,"=")!=0){
		printf("Faltando '='\n");
		exit(1);
	}	
	fscanf(sint_out," %s\n", tipo);			
	if(strcmp(tipo,"NUM")==0){
		carregaNumero("R1");
	}else if(strcmp(tipo,"VAR")==0){
		carregaVariavel("R1");
	}else{
		printf("Codigo com erros, nao pode ser gerado.");
		exit(1);
	}
	fscanf(sint_out," %s\n", operador);
	//printf("Operador: %s\n", operador);
	while((strcmp(operador,"&")==0) || (strcmp(operador,"|")==0) ){
		fscanf(sint_out," %s\n", tipo);			
		if(strcmp(tipo,"NUM")==0){
			carregaNumeroLog("R2");
		}else if(strcmp(tipo,"VAR")==0){
			carregaVariavelLog("R2");
		}else{
			printf("Codigo com erros, nao pode ser gerado.");
			exit(1);
		}
		if(strcmp(operador,"&")==0){
			printf("AND R1, R1, R2\n");
		}else{
			printf("OR R1, R1, R2\n");
		}
		fscanf(sint_out," %s\n", operador);
	}
	if(strcmp(operador,";")!=0){
		if(strcmp(operador,"")==0){
			printf("Esta faltando ';'\n");
			exit(1);
		}else{	
			printf("Operador '%s' nao e valido.\n",operador);
			exit(1);
		}
	}

	printf("ST R0, R1\n");

}

void carregaNumeroLog(char* reg){
	int neg = 0;
	fscanf(sint_out," %s\n", numero);
	if(strcmp(numero,"!")==0){ 		//Numero Negativo
		neg = 1;
		fscanf(sint_out," %s\n", numero);
		if(atoi(numero) >= 0 && atoi(numero) < 7){
			printf("LDI %s, %s\n", reg, numero);
			printf("NOT %s, %s\n", reg, reg);	
		}else{
			printf("Valor %s fora do intervalo [-7:7].\n", numero);
		}
	}
	else if(atoi(numero) >= 0 && atoi(numero) < 7){		// Numero Positivo
		printf("LDI %s, %s\n", reg, numero);
	}else{
		printf("Variavel %s fora do intervalo [-7:7].\n", numero );
		exit(1);
	}
}

void carregaVariavelLog(char* reg){
	int neg = 0;
	fscanf(sint_out," %s\n", variavel);
	if(strcmp(numero,"!")==0){				
		neg = 1;		
		fscanf(sint_out," %s\n", variavel);
	}

	if(retornaID(variavel)!= -1){
		printf("LDI R3, %i\n",retornaID(variavel));
		printf("LD %s, R3\n", reg);
		if(neg == 1){
			printf("NOT %s, %s\n",reg, reg);
		}
	}

	else{
		printf("Variavel %s nao existe.\n",variavel);
		exit(1);
	}
	
}

int retornaID(char* variavel){
	int j;
	for(j=0;j<indice+1;j++) {
        	if(strcmp(ids[j], variavel) == 0) {
			return j;
		}
	}
	return -1;
}
