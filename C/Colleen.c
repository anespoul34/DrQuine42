#include <stdio.h>
/*
	ceci est un commentaire
*/
void coucou(char*a){printf(a,10,10,9,10,10,10,34,a,34,10,10,9,10,10);}
int main(){char*a="#include <stdio.h>%c/*%c%cceci est un commentaire%c*/%cvoid coucou(char*a){printf(a,10,10,9,10,10,10,34,a,34,10,10,9,10,10);}%cint main(){char*a=%c%s%c;coucou(a);%c/*%c%cceci est un commentaire dans main%c*/%c}";coucou(a);
/*
	ceci est un commentaire dans main
*/
}