int i = 5;
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
int main(){if (i < 0 || i > 5){return 0;}int c=i-1;if(open("Sully_5.c", O_RDONLY) < 0 && i == 5){c++;}char z=48+c;char name[10]="Sully_";char namec[10];strncat(name,&z,1);strcpy(namec,name);strcat(namec,".c");char compil[50]="clang -Wall -Wextra -Werror -o ";char exec[10]="./";strcat(strncat(strcat(compil,name)," ",1),namec);strcat(exec,name);char*a="int i = %d;%c#include <stdio.h>%c#include <stdlib.h>%c#include <string.h>%c#include <unistd.h>%c#include <fcntl.h>%cint main(){if (i < 0 || i > 5){return 0;}int c=i-1;if(open(%cSully_5.c%c, O_RDONLY) < 0 && i == 5){c++;}char z=48+c;char name[10]=%cSully_%c;char namec[10];strncat(name,&z,1);strcpy(namec,name);strcat(namec,%c.c%c);char compil[50]=%cclang -Wall -Wextra -Werror -o %c;char exec[10]=%c./%c;strcat(strncat(strcat(compil,name),%c %c,1),namec);strcat(exec,name);char*a=%c%s%c;FILE*fd=fopen(namec,%cw%c);fprintf(fd,a,c,10,10,10,10,10,10,34,34,34,34,34,34,34,34,34,34,34,34,34,a,34,34,34);fclose(fd);if(i>0){system(compil);system(exec);}}";FILE*fd=fopen(namec,"w");fprintf(fd,a,c,10,10,10,10,10,10,34,34,34,34,34,34,34,34,34,34,34,34,34,a,34,34,34);fclose(fd);if(i>0){system(compil);system(exec);}}