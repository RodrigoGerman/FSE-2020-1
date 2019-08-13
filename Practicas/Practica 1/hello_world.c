#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
	int i=0;
	int x = atoi(argv[1]) + 1;

	for(i = 1;i < x;i++){
		//str = strcat("\033[0;3",sprintf(buf,"%llu",i));
		printf("\033[0;3%cm",i%6+'0');
		printf(" #%d FSE2020-1 German Lopez Rodrigo\n",i);
	}	
	printf("Hello world!\n");
	return 0;
}
