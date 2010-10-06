//Gera o assembly do arquivo de entrada

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
char operacao[3];
char variavel[16];
int valor[16];

void separador(){


}

int main()
{
  FILE *sint_out;
  char ch;
  int index = 0;
  char lexico[128][16]; // EDA onde guardamos as ids das variaveis, a posicao que esta no array indica a posicao que ficara na memoria do processador
  char id[16];
  char operacao[3] = "";
  char palavra[16] = "";
  int indexPalavra = 0;
  char vazio[16] = "";

  sint_out = fopen("sint_out.c", "r");

  if (!sint_out) {
	printf("Arquivo nao pode ser aberto ou nao existe.");
	exit(1);
  }

  while(!feof(sint_out)) {
  	fscanf(sint_out," %s",operacao);
	
	if(strcmp(operacao,"VRI")){
		fscanf(sint_out,"%s", &id);
		int j;
		for(j=0;j<index+1;j++) {
			if(strcmp(lexico[j], id) == 0) {
				printf("Variavel %s ja declarada!\n", id);
				exit(1);
			}
		}
		strcpy(lexico[index],id);
		index+=1;
	}

  }

  fclose(sint_out);
  int j;
  for(j=0;j<index;j++) {
  printf("%s\n",lexico[j]);
  }
}

