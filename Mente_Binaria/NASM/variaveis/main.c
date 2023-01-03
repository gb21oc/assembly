#include <stdio.h>

int assembly(void);
extern int myvar;

int main(void)
{
	printf("Valor: %d\n", myvar);
	assembly();
	printf("Valor: %d\n", myvar);
	return 0;
}
