%{

//Name: Subhrajeet Ganguly PRN:24070521201
#include <stdio.h>
int count = 0;

%}

%%
[Aa][a-zA-Z]+      { count++; }
.                  { /* ignore all the characters */ }
[\t\n]+            { /* ignore whitespaces */ }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a string: ");
    yylex();
    printf("Number of a's: %d\n", count);
    return 0;
}
