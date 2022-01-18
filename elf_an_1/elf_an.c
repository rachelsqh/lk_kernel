#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
void main(void)
{
	printf("%s:%d\n",__func__,__LINE__);
}
