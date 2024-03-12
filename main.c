#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

#include "libasm.h"

int main(int argc, char **argv){
	(void) argc, (void) argv;
	foo();
	printf("libasm main!!!\n");
	return (0);
}
