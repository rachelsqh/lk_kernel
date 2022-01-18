#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
void main(void)
{
	pid_t pt = 02;
	pt = getpid();
	
	printf("pid: %d\n",pt);


	printf("%s:%d\n",__func__,__LINE__);
}
