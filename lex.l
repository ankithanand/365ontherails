%{
#include<stdio.h>
int e,k,c,d,i,s;
%}
%%
include|void|main|int|float|double|scanf|char|printf {printf("keyword"); i++;}
[a-z][a-zA-Z0-9]* {printf("Identifier"); k++;}
[0-9]* {printf("digit"); e++;}
[+|-|*|/|=]* {printf("operator"); c++;}
[;|:|(|)|{|}|"|'|,|\n|\t]* {printf("delimeter"); d++;}
[#|<|>|%]* {printf("symbols"); s++;}
%%
int main(void)
{
yyin=fopen("pgm.txt","r");
yylex();
printf("\nidentifier %d\n",k);
printf("Symbols %d\n",s);
printf("digits %d\n",e);
printf(" Operator %d\n",c);
printf(" keywords %d\n",i);
printf("delimeter %d\n",d);
return 1;
}
int yywrap()
{
return 1;
}
