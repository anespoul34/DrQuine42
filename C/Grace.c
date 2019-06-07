#include <stdio.h>
#define OPEN() fopen("Grace_kid.c", "w");
#define READ() OPEN();
/*
	Commentaire
*/
#define FT(x)int main(){FILE*fd=READ();if(fd!=NULL){fprintf(fd,x,#x);}}
FT("#include <stdio.h>\n#define OPEN() fopen(\"Grace_kid.c\", \"w\");\n#define READ() OPEN();\n/*\n\tCommentaire\n*/\n#define FT(x)int main(){FILE*fd=READ();if(fd!=NULL){fprintf(fd,x,#x);}}\nFT(%s)")