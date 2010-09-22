//Gera o assembly do arquivo de entrada

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
  FILE *sint_out;
  char ch;
  int index = 0;
  char lexico[128][16];
  char id[16];
  char operacao[16] = "";
  char palavra[16] = "";
  int indexPalavra = 0;
  char vazio[16] = "";

  sint_out = fopen("sint_out.txt", "r");

  if (!sint_out) {
	printf("Arquivo nao pode ser aberto ou nao existe.");
	exit(1);
  }

  while((ch = getc(sint_out)) != EOF) {
  	
	if(ch == ' ' && (strcmp(palavra,"") != 0) && (strcmp(operacao,"") == 0)) {
		strcpy(operacao,palavra);
		indexPalavra = 0;
		strcpy(palavra,vazio);
		continue;
	}
	if(ch == '\n' && (strcmp(palavra,"") != 0) && (strcmp(operacao,vazio) != 0)) {
		strcpy(id,palavra);
		//printf("id: %s\n",id);
		indexPalavra = 0;
		if(strcmp(operacao, "VRI") == 0) {
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
		strcpy(operacao,vazio);
		strcpy(palavra,vazio);
		continue;
	}
	if(indexPalavra == 0) {
		int p; for(p=0;p<16;p++) palavra[p]='\0'; 
	}
	palavra[indexPalavra] = ch;
	indexPalavra+=1;
  }

fclose(sint_out);
int j;
for(j=0;j<index;j++) {
printf("%s\n",lexico[j]);
}
}

